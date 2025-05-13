# parser/klee_parser.py
import os
import subprocess
from pathlib import Path
from parser.symbolic_tree import SymbolicExecutionNode
from metrics import timed_parse

# Absolute or relative path to ktest‑tool binary
KTEST_TOOL_PATH = "klee/tools/ktest-tool/ktest-tool"


@timed_parse
def parse_klee_ktests(klee_dir: str) -> SymbolicExecutionNode:
    """
    Parse *all* .ktest files in `klee_dir` with a single ktest‑tool call.
    Returns a tree:  root -> one child per test case.
    The slow per‑file subprocess loop has been removed.
    """
    klee_dir = Path(klee_dir)
    ktests = sorted(klee_dir.glob("*.ktest"))
    if not ktests:
        return SymbolicExecutionNode(id="KLEE Root (no tests)")

    # ── 1) run ktest‑tool once  ────────────────────────────────────────────
    cmd = [KTEST_TOOL_PATH] + [str(p) for p in ktests]
    try:
        res = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, check=True)
    except FileNotFoundError:
        raise RuntimeError(f"ktest‑tool not found at {KTEST_TOOL_PATH!r}")
    except subprocess.CalledProcessError as e:
        raise RuntimeError(f"ktest‑tool failed:\n{e.stderr}") from e

    # ── 2) split stdout into per‑file blocks  ─────────────────────────────
    # ktest‑tool prints a header line:  "ktest file : 'test000001.ktest'"
    root = SymbolicExecutionNode(id="KLEE Root")
    block = []
    fname = None
    for line in res.stdout.splitlines():
        if line.startswith("ktest file"):
            # flush the previous block (if any)
            if fname is not None:
                _add_child(root, fname, block)
            # start a new block
            fname = line.split("'")[1]  # extract filename between quotes
            block = []
        elif "object" in line:
            block.append(line.strip())

    # final block
    if fname is not None:
        _add_child(root, fname, block)

    return root


# ------------------------------------------------------------------------- #
# helpers                                                                   #
# ------------------------------------------------------------------------- #
def _add_child(root: SymbolicExecutionNode, fname: str, obj_lines: list[str]):
    """
    Create a node for a single .ktest file and attach it to `root`.
    The path condition is just a comma‑joined list of the object lines,
    identical to the old behaviour but built far more cheaply.
    """
    summary = ", ".join(obj_lines)
    node = SymbolicExecutionNode(id=fname, path_condition=summary)
    root.add_child(node)
