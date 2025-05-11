import docker
import time
import os

class DockerContainers():
	def __init__(self):
		try:
			self.docker = docker.from_env()
		except:
			print(f'Error retrieving Docker instance. Make sure Docker is running.')

		try:
			self.docker.images.get('klee/klee:latest')
			self.docker.images.get('sosylab/cpachecker:latest')
		except:
			print(f'Error retrieving docker images')

	def run_code(self, testname, code):
		try:
			# Make sure test name is a duplicate
			test_dir = f'./results/{testname}'
			i = 0
			while os.path.exists(test_dir):
				i += 1
				test_dir = f'./results/{testname}_{i}'

			# Create directories
			os.makedirs(test_dir)
			os.makedirs(f'{test_dir}/klee')
			os.makedirs(f'{test_dir}/cpachecker')
		

			# Create code files
			with open(code, 'r') as code_file:
				c = code_file.read()
				with open(f'{test_dir}/klee/code.c', 'w') as file:
					file.write(c)
				with open(f'{test_dir}/cpachecker/code.c', 'w') as file:
					file.write(c)
		except:
			print(f'Error creating directories')
			return

		#### KLEE ####
		print("Running code with KLEE")
		try:
			self.klee_container = self.docker.containers.run(
				name='klee810', 
				image="klee/klee:latest", 
				platform='linux/amd64', 
				detach=True, 
				command='tail -f /dev/null', # Needed to stop the container from immediately stopping
				volumes=['/Users/nicholas/Documents/8_2025S/CS810/project/810-final-project/results:/results'])

			self.klee_container.exec_run(["/bin/bash", "-c", f'cd /results/{testname}/klee && clang -I /home/klee/klee_src/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone code.c'])
			self.klee_container.exec_run(["/bin/bash", "-c", f'cd /results/{testname}/klee && klee --emit-all-errors code.bc'])
			# self.klee_container.exec_run(["/bin/bash", "-c", f'cd /results/{testname}/klee && ktest-tool klee-last/test000001.ktest'])

			self.klee_container.stop()
			self.klee_container.remove()
		except:
			print(f'Error running {testname} on KLEE')


		#### CPAchecker ####
		print("Running code with CPAchecker")
		try:
			self.docker.containers.run(
				name='cpachecker810',
				image="sosylab/cpachecker:latest", 
				platform='linux/amd64', 
				command='code.c --preprocess',
				volumes=[f'/Users/nicholas/Documents/8_2025S/CS810/project/810-final-project/results/{testname}/cpachecker:/workdir'],
				remove=True)
		except:
			print(f'Error running {testname} on CPAchecker')

		# try:
		# 	self.cpachecker_container = self.docker.run(
		# 		name='cpachecker810',
		# 		image="sosylab/cpachecker:latest", 
		# 		platform='linux/amd64', 
		# 		detach=True, 
		# 		# command='tail -f /dev/null', # Needed to stop the container from immediately stopping
		# 		volumes=[f'/Users/nicholas/Documents/8_2025S/CS810/project/810-final-project/results/{testname}/cpachecker:/workdir']
		# 	)

		# 	self.klee_container.stop()
		# 	self.klee_container.remove()
		# except:
		# 	print(f'Error running {testname} on CPAchecker')
