int __VERIFIER_nondet_int();
void __assert_fail();
int main(int argc, char *argv[]);
extern void __VERIFIER_error(void);
int main_0(int argc, char *argv[]);
int main_0(int argc, char *argv[]) {
  int password;
  password = __VERIFIER_nondet_int();
  printf("Please enter your password here: ");
  scanf("%d", &password);
  __CPROVER_assume(password == 543210);
  printf("Welcome \n");
  __VERIFIER_error(); // target state
  __assert_fail();
}
