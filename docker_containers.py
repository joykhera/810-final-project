import docker
import time

class DockerContainers():
	def __init__(self):
		self.docker = docker.from_env()
		self.klee_container = None
		self.cpachecker_container = None

	def start_containers(self):
		self.klee_container = self.docker.containers.run(name='klee810', image="klee/klee:latest", platform='linux/amd64', detach=True, command='tail -f /dev/null')
		self.cpachecker_container = self.docker.containers.run(name='cpachecker810', image="sosylab/cpachecker:latest", platform='linux/amd64', detach=True, command='tail -f /dev/null')

	def stop_containers(self):
		if self.klee_container != None:
			self.klee_container.stop()
			self.klee_container.remove()

		if self.cpachecker_container != None:
			self.cpachecker_container.stop()
			self.cpachecker_container.remove()

	def run_code(self, code):
		(c, stream) = self.klee_container.exec_run(["/bin/bash", "-c", f'echo \"{code}\" > temp.c'])
		print(f'Code: {c}')
		print(f'Stream: {stream}')
		(c, stream) = self.klee_container.exec_run('clang -I /home/klee/klee_src/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone temp.c')
		print(f'Code: {c}')
		print(f'Stream: {stream}')
		(c, stream) = self.klee_container.exec_run('klee --emit-all-errors temp.bc')
		print(f'Code: {c}')
		print(f'Stream: {stream}')
		(c, stream) = self.klee_container.exec_run('ktest-tool klee-last/test000001.ktest')
		print(f'Code: {c}')
		print(f'Stream: {stream}')

		## CPAChecker
		# TODO

		return stream
	













			### KLEE
		# klee_commands = [f'echo \"{code}\" > temp.c'
		# 								,'clang -I /home/klee/klee_src/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone temp.c'
		# 								,'klee --emit-all-errors temp.bc'
		# 								,'ktest-tool klee-last/test000001.ktest']
		
		# print(klee_commands)

		# self.klee_container = self.docker.containers.run("klee/klee", detach=True, platform='linux/amd64')
		# self.docker.containers.run(image="klee/klee:latest", command=klee_commands)
		# klee_res = self.klee_container.exec_run(klee_commands)