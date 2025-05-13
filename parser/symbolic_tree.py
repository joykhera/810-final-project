# symbolic_tree.py
class SymbolicExecutionNode:
    def __init__(self, id, constraint=None, path_condition=None, source=None):
        self.id = id
        self.constraint = constraint
        self.path_condition = path_condition
        self.source = source
        self.children = []

    def add_child(self, node):
        self.children.append(node)

    def __repr__(self):
        return f"Node({self.id}, {self.constraint}, {len(self.children)} children)"
