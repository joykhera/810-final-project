# # main.py
# from cpachecker_parser import parse_cpa_arg
# from klee_parser import parse_klee_ktests


# def print_tree(node, depth=0):
#     print("  " * depth + f"ID: {node.id}, Constraint: {node.constraint or node.path_condition}")
#     for child in node.children:
#         print_tree(child, depth + 1)

# result_path = "results/binary_search_correct/"
# print("=== CPAchecker Tree ===")
# cpa_root = parse_cpa_arg(result_path + "cpachecker/output/ARG.dot")
# print_tree(cpa_root)

# print("\n=== KLEE Tree ===")
# klee_root = parse_klee_ktests(result_path + "klee/klee-out-0")
# print_tree(klee_root)

import sys
from PySide6.QtWidgets import QApplication
from gui.main_window import MainWindow

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec())
