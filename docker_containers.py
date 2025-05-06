import docker

class DockerContainers():
	def __init__(self):
		self.docker = docker.from_env()
		self.klee_container = None
		self.cpachecker_container = None

	def start_containers(self):
		self.klee_container = self.docker.containers.run("klee/klee:latest", detach=True)
		self.cpachecker_container = self.docker.containers.run("sosylab/cpachecker:latest", detach=True)

	def stop_containers(self):
		self.klee_container.stop()
		self.cpachecker_container.stop()

	def run_code(self, code_file):
		### TODO ###
		pass