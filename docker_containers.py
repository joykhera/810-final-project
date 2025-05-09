import docker
import time
import os

class DockerContainers():
	def __init__(self):
		self.docker = docker.from_env()

	def run_code(self, testname, code):
		# Make sure test name is a duplicate
		test_dir = f'./shared/{testname}'
		i = 0
		while os.path.exists(test_dir):
			i += 1
			test_dir = f'./shared/{testname}_{i}'

		# Create directories
		os.makedirs(test_dir)
		os.makedirs(f'{test_dir}/klee')
		os.makedirs(f'{test_dir}/cpachecker')

		# Create code files
		with open(f'{test_dir}/klee/code.c', 'w') as file:
			file.write(code)
		with open(f'{test_dir}/cpachecker/code.c', 'w') as file:
			file.write(code)

		#### KLEE ####
		print("Running code with KLEE")
		self.klee_container = self.docker.containers.run(
			name='klee810', 
			image="klee/klee:latest", 
			platform='linux/amd64', 
			detach=True, 
			command='tail -f /dev/null', # Needed to stop the container from immediately stopping
			volumes=['/Users/nicholas/Documents/8_2025S/CS810/project/810-final-project/shared:/shared'])

		self.klee_container.exec_run(["/bin/bash", "-c", f'cd /shared/{testname}/klee && clang -I /home/klee/klee_src/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone code.c'])
		self.klee_container.exec_run(["/bin/bash", "-c", f'cd /shared/{testname}/klee && klee --emit-all-errors code.bc'])
		# self.klee_container.exec_run(["/bin/bash", "-c", f'cd /shared/{testname}/klee && ktest-tool klee-last/test000001.ktest'])

		self.klee_container.stop()
		self.klee_container.remove()


		#### CPAchecker ####
		print("Running code with CPAchecker")
		self.docker.containers.run(
			name='cpachecker810',
			image="sosylab/cpachecker:latest", 
			platform='linux/amd64', 
			command=f'code.c', 
			volumes=[f'/Users/nicholas/Documents/8_2025S/CS810/project/810-final-project/shared/{testname}/cpachecker:/workdir'],
			remove=True)