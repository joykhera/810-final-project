unsigned int __VERIFIER_nondet_uint();
void __assert_fail(const char *assertion, const char *file, unsigned int line, const char *function);
int main();
extern void __VERIFIER_error(void);
int main_0();
int main_0() {
  unsigned n;
  n = __VERIFIER_nondet_uint();
  unsigned x;
  x = __VERIFIER_nondet_uint();
  unsigned y = n - x;
  __CPROVER_assume(x > y);
  const unsigned __CPAchecker_TMP_0 = x;
  x = x - 1;
  __CPAchecker_TMP_0;
  const unsigned __CPAchecker_TMP_1 = y;
  y = y + 1;
  __CPAchecker_TMP_1;
  __CPROVER_assume(x < y);
  __VERIFIER_error(); // target state
  __assert_fail("0", "example-unsafe.c", 20, "main");
}
