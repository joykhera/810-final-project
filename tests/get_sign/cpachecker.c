extern int __VERIFIER_nondet_int();

 int get_sign(int x) {
	 if (x == 0)
			return 0;
	 
	 if (x < 0)
			return -1;
	 else 
			return 1;
 } 
 
 int main() {
	 int a = __VERIFIER_nondet_int();
	 return get_sign(a);
 } 