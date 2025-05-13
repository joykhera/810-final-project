# gui/tree_canvas.py
from matplotlib.backends.backend_qtagg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
from PySide6.QtGui import QPixmap
from io import BytesIO


def compute_depths(root, max_depth=20, max_nodes=1000):
    print("[Chart] Computing path depths...")

    def helper(node, depth):
        if depth > max_depth or len(depths) >= max_nodes or node.id in visited:
            return
        visited.add(node.id)
        depths.append(depth)
        for child in node.children:
            helper(child, depth + 1)

    visited = set()
    depths = []
    helper(root, 0)
    print(f"[Chart] Computed depths for {len(depths)} nodes.")
    return depths


def draw_summary_chart(root_node, label_widget):
    depths = compute_depths(root_node)
    fig = Figure(figsize=(5, 4))  # make bigger
    ax = fig.add_subplot(111)
    ax.hist(depths, bins=range(0, max(depths) + 2), edgecolor="black")
    ax.set_title("Path Depth Distribution")
    ax.set_xlabel("Depth")
    ax.set_ylabel("Count")

    buf = BytesIO()
    fig.tight_layout()
    fig.savefig(buf, format="png")

    pixmap = QPixmap()
    pixmap.loadFromData(buf.getvalue())
    label_widget.setPixmap(pixmap)
    label_widget.setScaledContents(True)
