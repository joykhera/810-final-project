from docker_containers import DockerContainers
import time

containers = DockerContainers()

print('Running code file')
containers.run_code("free-global_false-valid-free", "./tests/free-global_false-valid-free.c")