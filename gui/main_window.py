# gui/main_window.py
from gui.tree_canvas import draw_summary_chart
from parser.klee_parser import parse_klee_ktests
from parser.cpachecker_parser import parse_cpa_arg
from PySide6.QtCore import QTimer
from PySide6.QtWidgets import QMainWindow, QFileDialog, QTreeWidget, QTreeWidgetItem, QVBoxLayout, QPushButton, QWidget, QTextEdit, QHBoxLayout, QLabel, QMessageBox, QGridLayout, QSizePolicy


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Symbolic Execution Tree Visualizer")
        self.resize(1000, 600)

        klee_button = QPushButton("Load KLEE")
        klee_button.clicked.connect(self.load_klee)
        cpa_button = QPushButton("Load CPAchecker")
        cpa_button.clicked.connect(self.load_cpachecker)

        klee_label = QLabel("Choose KLEE output folder (e.g., klee-out-0)")
        cpa_label = QLabel("Choose CPAchecker ARG.dot file")

        # Tree views
        self.klee_tree = QTreeWidget()
        self.klee_tree.setHeaderLabels(["KLEE Node ID", "Constraint"])
        self.klee_tree.itemClicked.connect(self.show_details)

        self.cpa_tree = QTreeWidget()
        self.cpa_tree.setHeaderLabels(["CPA Node ID", "Constraint"])
        self.cpa_tree.itemClicked.connect(self.show_details)

        # Charts
        self.klee_chart = QLabel()
        self.klee_chart.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.cpa_chart = QLabel()
        self.cpa_chart.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        # Node detail box
        self.details_text = QTextEdit()
        self.details_text.setReadOnly(True)

        # Layout
        layout = QGridLayout()
        layout.addWidget(klee_button, 0, 0)
        layout.addWidget(cpa_button, 0, 1)
        layout.addWidget(klee_label, 1, 0)
        layout.addWidget(cpa_label, 1, 1)
        layout.addWidget(self.klee_tree, 2, 0)
        layout.addWidget(self.cpa_tree, 2, 1)
        layout.addWidget(self.klee_chart, 3, 0)
        layout.addWidget(self.cpa_chart, 3, 1)
        layout.addWidget(self.details_text, 4, 0, 1, 2)

        # Finalize layout
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

    def show_details(self, item):
        node_data = item.data(0, 0)
        self.details_text.setPlainText(str(node_data))

    def populate_tree(self, root_node, tree_widget, chart_label, max_nodes=100):
        print(f"[GUI] Populating tree with max {max_nodes} nodes...")
        tree_widget.clear()
        visited = set()
        node_count = 0

        def recurse(node, parent_item=None):
            nonlocal node_count
            if node_count >= max_nodes or node.id in visited:
                return
            visited.add(node.id)

            item = QTreeWidgetItem([node.id, node.constraint or node.path_condition or ""])
            item.setData(0, 0, node)

            if parent_item:
                parent_item.addChild(item)
            else:
                tree_widget.addTopLevelItem(item)

            node_count += 1
            for child in node.children:
                recurse(child, item)

        recurse(root_node)
        print(f"[GUI] Tree render finished with {node_count} nodes.")
        QTimer.singleShot(50, lambda: draw_summary_chart(root_node, chart_label))

    def load_klee(self):
        dir_path = QFileDialog.getExistingDirectory(self, "Select KLEE output dir")
        if dir_path:
            root_node = parse_klee_ktests(dir_path)
            self.populate_tree(root_node, self.klee_tree, self.klee_chart)

    def load_cpachecker(self):
        path, _ = QFileDialog.getOpenFileName(self, "Select CPAchecker ARG.dot")
        if path:
            try:
                print("[GUI] Starting CPAchecker load...")
                root_node = parse_cpa_arg(path)
                print("[GUI] Finished parsing. Now populating tree.")
                self.populate_tree(root_node, self.cpa_tree, self.cpa_chart)
                print("[GUI] Tree population complete.")
            except Exception as e:
                print(f"[GUI] Error during CPAchecker load: {e}")
                QMessageBox.critical(self, "Error", f"Failed to load CPAchecker tree:\n{str(e)}")
