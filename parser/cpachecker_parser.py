# cpachecker_parser.py
import pydot
from parser.symbolic_tree import SymbolicExecutionNode


def parse_cpa_arg(dot_path):
    graph = pydot.graph_from_dot_file(dot_path)[0]
    nodes = {}
    root = None

    for node in graph.get_nodes():
        node_id = node.get_name().strip('"')
        if node_id == "node":
            continue

        label = node.get_attributes().get("label", "")
        constraint = label.split("\\n")[1] if "\\n" in label else None
        nodes[node_id] = SymbolicExecutionNode(id=node_id, constraint=constraint)

    for edge in graph.get_edges():
        src = edge.get_source().strip('"')
        tgt = edge.get_destination().strip('"')

        if src in nodes and tgt in nodes:
            if nodes[tgt] not in nodes[src].children:  # avoid dupes
                nodes[src].add_child(nodes[tgt])

    if not nodes:
        raise ValueError("No valid nodes parsed from CPAchecker ARG.dot.")

    root = nodes[list(nodes.keys())[0]]
    return root
