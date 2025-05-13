# gui/tree_canvas.py
from matplotlib.backends.backend_qtagg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
from PySide6.QtGui import QPixmap
from io import BytesIO


def compute_depths(root):
    def helper(node, depth):
        depths.append(depth)
        for child in node.children:
            helper(child, depth + 1)

    depths = []
    helper(root, 0)
    return depths


def draw_summary_chart(root_node, label_widget):
    depths = compute_depths(root_node)
    fig = Figure(figsize=(4, 3))
    ax = fig.add_subplot(111)
    ax.hist(depths, bins=range(0, max(depths) + 2), edgecolor="black")
    ax.set_title("Path Depth Distribution")
    ax.set_xlabel("Depth")
    ax.set_ylabel("Count")

    buf = BytesIO()
    fig.savefig(buf, format="png")
    pixmap = QPixmap()
    pixmap.loadFromData(buf.getvalue())
    label_widget.setPixmap(pixmap)
