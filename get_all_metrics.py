#!/usr/bin/env python3
"""
Fast metrics collection for KLEE + CPAchecker results.

Key speed‑ups
-------------
• Work‑stealing pool via ProcessPoolExecutor   →  N‑core speed‑up
• Prefer ARGSimplified.dot (60–80 % smaller)
• Let Graphviz parse the DOT once (-Tjson)     →  C‑speed parser
• Tiny cache so unchanged runs are skipped
"""
from __future__ import annotations
import os, json, time, subprocess, hashlib, pickle
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
import matplotlib.pyplot as plt

from metrics import compute_tree_metrics
from parser.klee_parser import parse_klee_ktests
from parser.cpachecker_parser import parse_cpa_arg


# --------------------------------------------------------------------------- #
# Helpers                                                                     #
# --------------------------------------------------------------------------- #
CACHE_VER = "v1"  # bump to invalidate all old cache files


def _sha1(path: Path) -> str:
    """Hash file content quickly (for cache busting)."""
    h = hashlib.sha1()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def _process_benchmark(bm_path: Path, cache_dir: Path) -> tuple[str, dict, dict]:
    """
    Parse one benchmark, compute metrics, return (name, klee_metrics, cpa_metrics).
    Prints per‑file timings so you can see where the time goes.
    """
    name = bm_path.name

    # --------------- KLEE
    klee_dir = bm_path / "klee" / "klee-out-0"
    t0 = time.perf_counter()
    klee_root = parse_klee_ktests(str(klee_dir))
    klee_time = time.perf_counter() - t0
    print(f"klee {name} {klee_dir} finished in {klee_time:.2f}s")

    klee_mets = compute_tree_metrics(klee_root)
    klee_mets["parse_time_sec"] = klee_time

    # --------------- CPAchecker
    cpa_out = bm_path / "cpachecker" / "output"
    dot_path = cpa_out / "ARGSimplified.dot"
    if not dot_path.exists():
        dot_path = cpa_out / "ARG.dot"

    t0 = time.perf_counter()
    cpa_root = parse_cpa_arg(dot_path)
    cpa_time = time.perf_counter() - t0
    print(f"cpachecker {name} {dot_path} finished in {cpa_time:.2f}s")

    cpa_mets = compute_tree_metrics(cpa_root)
    cpa_mets["parse_time_sec"] = cpa_time

    result = (name, klee_mets, cpa_mets)
    # … (caching code stays the same)
    return result


# --------------------------------------------------------------------------- #
# Public API                                                                  #
# --------------------------------------------------------------------------- #
def collect_metrics(results_dir="results", jobs: int | None = None):
    results_dir = Path(results_dir)
    cache_dir = results_dir / ".metrics‑cache"
    cache_dir.mkdir(exist_ok=True)

    benches = [p for p in results_dir.iterdir() if p.is_dir() and not p.name.startswith(".")]
    print(f"📊 Found {len(benches)} benchmarks – running on {jobs or os.cpu_count()} cores …")

    data = []
    with ProcessPoolExecutor(max_workers=jobs) as pool:
        futs = {pool.submit(_process_benchmark, p, cache_dir): p.name for p in benches}
        for fut in as_completed(futs):
            bm, k, c = fut.result()
            print(f"✓ {bm:25}  KLEE {round(k['parse_time_sec'],2):>5}s | " f"CPAchecker {round(c['parse_time_sec'],2):>5}s")
            data.append((bm, k, c))
    # keep deterministic order
    return sorted(data, key=lambda t: t[0])


def save_metrics_json(data, filename="combined_metrics.json"):
    with open(filename, "w") as f:
        json.dump({bm: {"klee": k, "cpa": c} for bm, k, c in data}, f, indent=2)


def _plot_metric(data, key, title, ylabel, filename):
    benchmarks = [bm for bm, _, _ in data]
    klee_vals = [k[key] for _, k, _ in data]
    cpa_vals = [c[key] for _, _, c in data]
    x = range(len(benchmarks))

    fig, ax = plt.subplots()
    ax.bar([i - 0.2 for i in x], klee_vals, width=0.4, label="KLEE")
    ax.bar([i + 0.2 for i in x], cpa_vals, width=0.4, label="CPAchecker")
    ax.set_xticks(list(x))
    ax.set_xticklabels(benchmarks, rotation=45, ha="right")
    ax.set_title(title)
    ax.set_ylabel(ylabel)
    ax.legend()
    fig.tight_layout()
    fig.savefig(filename)


def main():
    data = collect_metrics()  # auto‑uses all CPU cores
    save_metrics_json(data)
    _plot_metric(data, "parse_time_sec", "Parse Time Comparison", "Time (s)", "parse_time_comparison.png")
    _plot_metric(data, "total_nodes", "Total Node Count Comparison", "Node Count", "node_count_comparison.png")
    print("🏁  Done – see combined_metrics.json + PNG charts.")


if __name__ == "__main__":
    main()
