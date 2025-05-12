#include <klee/klee.h>

int main(int argc, char *argv[])
{
  int password;
  klee_make_symbolic(&password,sizeof(int),"password");
  printf("Please enter your password here: ");
  scanf("%d", &password);
  if (password == 543210) {
    printf("Welcome \n");
    klee_assert(0);
  }
  else
    printf("Error: Incorrect Password \n");
  return 0;
}