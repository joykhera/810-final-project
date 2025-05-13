from os import getcwd
from docker_containers import DockerContainers

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

def run_test(containers, testname):
	cur_path = getcwd()
	containers.run_code(testname, f'{cur_path}/tests/{testname}', f'{cur_path}/results')

def run_all_tests(containers):
	for t in test_names:
		run_test(containers, t)

try:
	containers = DockerContainers()
	run_test(containers, 'sort')
	# run_all_tests()
except:
	pass