// #include <assert.h>

extern int __VERIFIER_nondet_int();
extern void __assert_fail();

int main(int argc, char *argv[])
{
  int password = __VERIFIER_nondet_int();
  printf("Please enter your password here: ");
  scanf("%d", &password);
  if (password == 543210) {
    printf("Welcome \n");
    // __VERIFIER_error();
    // assert(0);
    __assert_fail();
  }
  else
    printf("Error: Incorrect Password \n");
  return 0;
}