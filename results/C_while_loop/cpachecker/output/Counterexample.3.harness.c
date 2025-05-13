struct _IO_FILE;
typedef struct _IO_FILE FILE;
extern struct _IO_FILE *stderr;
extern int fprintf(FILE *__restrict __stream, const char *__restrict __format, ...);
extern void exit(int __status) __attribute__ ((__noreturn__));
void __assert_fail(const char *assertion, const char *file, unsigned int line, const char *function) {
  fprintf(stderr, "CPAchecker test harness: property violation reached\n");
  exit(107);
}
unsigned int __VERIFIER_nondet_uint() {
  static unsigned int test_vector_index = 0;
  unsigned int retval;
  switch (test_vector_index) {
    case 0: retval = 4294967295U; break;
    case 1: retval = 2147483648U; break;
  }
  ++test_vector_index;
  return retval;
}
