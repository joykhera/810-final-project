from docker_containers import DockerContainers
import time

containers = DockerContainers()

working_tests = [
	'free-global_false-valid-free',
	'free-stack_false-valid-free',
	'inf_loop_and_exit_true-unreach-call',
	'invalid_free_regression_false-valid-free',
	'null-deref_false-valid-deref',
	'trivial-leak_false-valid-memtrack_false-valid-memcleanup',
]

not_working_tests = {

}

print('Running code file')
testname=working_tests[1]
containers.run_code(testname, f'./tests/{testname}.c')

# test_dir = './tests/'

# def run_one_test(test_name):
# 	containers.run_code(test_name, f'{test_dir}/{test_name}.c')

# run_one_test('free-global_false-valid-free')