# metrics.py
import time
from typing import Dict
from parser.symbolic_tree import SymbolicExecutionNode


def compute_tree_metrics(root: SymbolicExecutionNode) -> Dict[str, float]:
    """
    Traverse the symbolic execution tree to compute:
      - total_nodes: Number of nodes in the tree
      - total_edges: Number of parent→child links
      - max_depth: Maximum depth reached
      - avg_depth: Average depth across all nodes
      - avg_branching_factor: Average children per node
      - avg_constraint_length: Average length of constraint/path_condition strings
      - max_constraint_length: Maximum constraint length
    """
    nodes = []
    edges = 0
    depths = []

    def dfs(node: SymbolicExecutionNode, depth: int):
        nonlocal edges
        nodes.append(node)
        depths.append(depth)
        edges += len(node.children)
        for child in node.children:
            dfs(child, depth + 1)

    dfs(root, 0)

    constraint_lengths = [len((node.constraint or "")) + len((node.path_condition or "")) for node in nodes]

    return {
        "total_nodes": float(len(nodes)),
        "total_edges": float(edges),
        "max_depth": float(max(depths)) if depths else 0.0,
        "avg_depth": sum(depths) / len(depths) if depths else 0.0,
        "avg_branching_factor": edges / len(nodes) if nodes else 0.0,
        "avg_constraint_length": sum(constraint_lengths) / len(constraint_lengths) if constraint_lengths else 0.0,
        "max_constraint_length": float(max(constraint_lengths)) if constraint_lengths else 0.0,
    }


def timed_parse(parse_fn):
    """
    Decorator to time a parse function and append parse_time_sec into metrics.
    Assumes parse_fn returns a root node.
    """

    def wrapper(*args, **kwargs):
        start = time.perf_counter()
        root = parse_fn(*args, **kwargs)
        duration = time.perf_counter() - start

        from metrics import compute_tree_metrics

        metrics = compute_tree_metrics(root)
        metrics["parse_time_sec"] = duration

        # Print JSON-like line for easy grepping / logging
        print(f"[Metrics][{parse_fn.__name__}] {metrics}")
        return root

    return wrapper
