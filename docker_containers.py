import docker
import time
import os

class DockerContainers():
	def __init__(self):
		try:
			self.docker = docker.from_env()
		except Exception as e:
			print(f'Error retrieving Docker instance. Make sure Docker is running: {e}')
			raise Exception

		try:
			self.docker.images.get('klee/klee:latest')
			self.docker.images.get('sosylab/cpachecker:latest')
		except Exception as e:
			print(f'Error retrieving docker images: {e}')
			raise Exception

	def run_code(self, testname, klee_file, cpachecker_file, cpachecker_options):
		# Get current directory
		current_dir = os.getcwd()

		try:
			# Make sure test name is a duplicate
			test_dir = f'./results/'

			if os.path.exists(f'{test_dir}/{testname}'):
				i = 1
				while os.path.exists(f'{test_dir}/{testname}-{i}'):
					i += 1
			
				testname = f'{testname}-{i}'

			test_dir = f'./results/{testname}'

			# Create directories
			os.makedirs(test_dir)
			os.makedirs(f'{test_dir}/klee')
			os.makedirs(f'{test_dir}/cpachecker')
		

			# Copy code to KLEE folder
			with open(klee_file, 'r') as klee:
				c = klee.read()
				with open(f'{test_dir}/klee/code.c', 'w') as file:
					file.write(c)

			# Copy code to CPAchecker folder
			with open(cpachecker_file, 'r') as cpachecker:
				c = cpachecker.read()
				with open(f'{test_dir}/cpachecker/code.c', 'w') as file:
					file.write(c)
		except Exception as e:
			print(f'Error creating directories: {e}')
			return
		
		klee_time = 0.0
		cpachecker_time = 0.0

		#### KLEE ####
		print(f"Running {testname} with KLEE")
		try:
			klee_start = time.time()
			self.klee_container = self.docker.containers.run(
				name='klee810', 
				image="klee/klee:latest", 
				platform='linux/amd64', 
				detach=True, 
				command='tail -f /dev/null', # Needed to stop the container from immediately stopping
				volumes=[f'{current_dir}/results:/results'])

			
			self.klee_container.exec_run(["/bin/bash", "-c", f'cd /results/{testname}/klee && clang -I /home/klee/klee_src/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone code.c'])
			self.klee_container.exec_run(["/bin/bash", "-c", f'cd /results/{testname}/klee && klee --emit-all-errors code.bc'])
			# self.klee_container.exec_run(["/bin/bash", "-c", f'cd /results/{testname}/klee && ktest-tool klee-last/test000001.ktest'])

			self.klee_container.stop()
			self.klee_container.remove()
			klee_time = time.time() - klee_start
		except Exception as e:
			print(f'Error running {testname} on KLEE: {e}')


		#### CPAchecker ####
		print(f"Running {testname} with CPAchecker")
		try:
			cpachecker_start = time.time()
			self.docker.containers.run(
				name='cpachecker810',
				image="sosylab/cpachecker:latest", 
				platform='linux/amd64', 
				# command='code.c --preprocess --symbolicExecution-Cegar',
				# command='code.c --preprocess --spec Assertion --symbolicExecution-Cegar',
				command=f'code.c {cpachecker_options}',
				volumes=[f'{current_dir}/results/{testname}/cpachecker:/workdir'],
				remove=True)
			cpachecker_time = time.time() - cpachecker_start
		except Exception as e:
			print(f'Error running {testname} on CPAchecker: {e}')
		

		# Write times to file
		with open(f'{test_dir}/timings.txt', 'w') as timings:
			timings.write(f'KLEE: {klee_time}\nCPAchecker: {cpachecker_time}')
