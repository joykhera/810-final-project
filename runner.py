from docker_containers import DockerContainers

containers = DockerContainers()

print('Starting containers')
containers.start_containers()

print('Running code file')
containers.run_code('test.c')

print('Stopping containers')
containers.stop_containers()