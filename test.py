import docker
client = docker.from_env()

# container = client.containers.run(name='dockertest', image="ubuntu:latest", detach=True)
# print(client.containers.list())

command = ["/bin/bash", "-c", "echo FIRST COMMAND;echo SECOND COMMAND"]

# container = client.containers.run(image="klee/klee:latest", detach=True, command='tail -f /dev/null')
# res = container.logs()
# print(res)
# # res = container.exec_run("echo Hello")
# res = client.containers.run("ubuntu:latest", command)
# print(res)
# container.stop()
# container.remove()

client.containers.run(
	name='cpachecker810',
	image="sosylab/cpachecker:latest", 
	platform='linux/amd64', 
	command='code.c --preprocess', 
	volumes=[f'/Users/nicholas/Documents/8_2025S/CS810/project/810-final-project/results/test/:/workdir'],
	remove=True)