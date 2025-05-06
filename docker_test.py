import docker

container = client.containers.run("ubuntu:latest", detach=True)

res = container.exec_run("echo Hello")

print(res)

container.stop()