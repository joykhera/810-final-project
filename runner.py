from docker_containers import DockerContainers

containers = DockerContainers()

test_names= [
	'binary_search_correct',
	'binary_search_incorrect',
	'get_sign',
	'password_checker',
	'password_checker_2',
	'regex_recursion',
	'sort',
	'while_const',
	'while_var',
]

def run_test(testname):
	options = ''
	with open(f'./tests/{testname}/cpachecker.options', 'r') as opt: 
		options = opt.read()

	containers.run_code(testname, f'./tests/{testname}/klee.c', f'./tests/{testname}/cpachecker.c', options)

def run_all_tests():
	for t in test_names:
		run_test(t)

# run_all_tests()
run_test('C_while_const')