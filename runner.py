from docker_containers import DockerContainers
import time

containers = DockerContainers()

print('Running code file')
containers.run_code("test1", "int main() {return 0;}")