# parser/klee_parser.py
import os
import subprocess
from parser.symbolic_tree import SymbolicExecutionNode
from metrics import timed_parse

# Set your actual path here
KTEST_TOOL_PATH = "klee/tools/ktest-tool/ktest-tool"


@timed_parse
def parse_klee_ktests(klee_dir):
    nodes = []
    ktest_files = sorted(f for f in os.listdir(klee_dir) if f.endswith(".ktest"))

    for filename in ktest_files:
        path = os.path.join(klee_dir, filename)
        try:
            result = subprocess.run([KTEST_TOOL_PATH, path], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True, text=True)
            output = result.stdout.strip().split("\n")
            constraints = [line for line in output if "object" in line]
            summary = ", ".join(constraints)

            node = SymbolicExecutionNode(id=filename, path_condition=summary)
            nodes.append(node)
        except subprocess.CalledProcessError as e:
            print(f"Error running ktest-tool on {filename}: {e.stderr}")

    root = SymbolicExecutionNode(id="KLEE Root")
    for node in nodes:
        root.add_child(node)
    return root
