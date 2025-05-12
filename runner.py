from docker_containers import DockerContainers
import time

containers = DockerContainers()

working_tests = [
	'K_binary_search_correct',
	'K_binary_search_incorrect',
	'K_get_sign',
	'K_password_checker',
	'K_password_checker_2',
	'K_regex_recursion',
	'K_sort'
]

def run_test(testname):
	options = ''
	with open(f'./tests/{testname}/cpachecker.options', 'r') as opt: 
		options = opt.read()

	containers.run_code(testname, f'./tests/{testname}/klee.c', f'./tests/{testname}/cpachecker.c', options)

def run_all_tests():
	for t in working_tests:
		run_test(t)

run_all_tests()
# run_test('binary_search_correct')