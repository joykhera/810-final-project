struct _IO_FILE;
typedef struct _IO_FILE FILE;
extern struct _IO_FILE *stderr;
extern int fprintf(FILE *__restrict __stream, const char *__restrict __format, ...);
extern void exit(int __status) __attribute__ ((__noreturn__));
void __assert_fail() {
  fprintf(stderr, "CPAchecker test harness: property violation reached\n");
  exit(107);
}
int __VERIFIER_nondet_int() {
  int retval;
  retval = 543210;
  return retval;
}
