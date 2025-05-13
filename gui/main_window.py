# gui/main_window.py
from PySide6.QtWidgets import QMainWindow, QFileDialog, QTreeWidget, QTreeWidgetItem, QVBoxLayout, QPushButton, QWidget, QTextEdit, QHBoxLayout, QLabel
from gui.tree_canvas import draw_summary_chart
from parser.klee_parser import parse_klee_ktests
from parser.cpachecker_parser import parse_cpa_arg


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Symbolic Execution Tree Visualizer")
        self.resize(1000, 600)

        self.tree_widget = QTreeWidget()
        self.tree_widget.setHeaderLabels(["Node ID", "Constraint"])
        self.tree_widget.itemClicked.connect(self.show_details)

        self.details_text = QTextEdit()
        self.details_text.setReadOnly(True)

        self.chart_label = QLabel()
        self.chart_label.setMinimumWidth(400)

        layout = QHBoxLayout()
        layout.addWidget(self.tree_widget)
        layout.addWidget(self.details_text)
        layout.addWidget(self.chart_label)

        buttons = QHBoxLayout()
        load_klee_btn = QPushButton("Load KLEE")
        load_klee_btn.clicked.connect(self.load_klee)
        load_cpa_btn = QPushButton("Load CPAchecker")
        load_cpa_btn.clicked.connect(self.load_cpachecker)
        buttons.addWidget(load_klee_btn)
        buttons.addWidget(load_cpa_btn)

        main_layout = QVBoxLayout()
        main_layout.addLayout(buttons)
        main_layout.addLayout(layout)

        container = QWidget()
        container.setLayout(main_layout)
        self.setCentralWidget(container)

    def show_details(self, item):
        node_data = item.data(0, 0)
        self.details_text.setPlainText(str(node_data))

    def populate_tree(self, root_node, max_nodes=100):
        self.tree_widget.clear()
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
                self.tree_widget.addTopLevelItem(item)

            node_count += 1
            for child in node.children:
                recurse(child, item)

        recurse(root_node)
        draw_summary_chart(root_node, self.chart_label)

    def load_cpachecker(self):
        path, _ = QFileDialog.getOpenFileName(self, "Select CPAchecker ARG.dot")
        if path:
            try:
                root_node = parse_cpa_arg(path)
                self.populate_tree(root_node)
            except Exception as e:
                QMessageBox.critical(self, "Error", f"Failed to load CPAchecker tree:\n{str(e)}")

    def load_klee(self):
        dir_path = QFileDialog.getExistingDirectory(self, "Select KLEE output dir")
        if dir_path:
            root_node = parse_klee_ktests(dir_path)
            self.populate_tree(root_node)
