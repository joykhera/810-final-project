from docker_containers import DockerContainers
import time

containers = DockerContainers()

print('Starting containers')
containers.start_containers()

# time.sleep(1000)

print('Running code file')
try:
	containers.run_code("int main() {return 0;}")
finally:
	print('Stopping containers')
	containers.stop_containers()