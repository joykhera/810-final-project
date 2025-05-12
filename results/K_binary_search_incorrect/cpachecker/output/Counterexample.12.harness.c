struct _IO_FILE;
typedef struct _IO_FILE FILE;
extern struct _IO_FILE *stderr;
extern int fprintf(FILE *__restrict __stream, const char *__restrict __format, ...);
extern void exit(int __status) __attribute__ ((__noreturn__));
void __assert_fail(const char *__assertion, const char *__file, unsigned int __line, const char *__function) {
  fprintf(stderr, "CPAchecker test harness: property violation reached\n");
  exit(107);
}
void __VERIFIER_assume(int cond) { if (!(cond)) { exit(0); }}
unsigned int __VERIFIER_nondet_uint() {
  unsigned int retval;
  retval = 0U;
  return retval;
}
void __assert(const char *__assertion, const char *__file, int __line) {
  fprintf(stderr, "Called method __assert that has attribute noreturn.\n");
  exit(1);
}
void __assert_perror_fail(int __errnum, const char *__file, unsigned int __line, const char *__function) {
  fprintf(stderr, "Called method __assert_perror_fail that has attribute noreturn.\n");
  exit(1);
}
size_t __ctype_get_mb_cur_max() {
  size_t retval;
  retval = 0UL;
  return retval;
}
__ssize_t __getdelim(char **__lineptr, size_t *__n, int __delimiter, FILE *__stream) {
  __ssize_t retval;
  retval = 0L;
  return retval;
}
int __overflow(FILE *p0, int p1) {
  int retval;
  retval = 0;
  return retval;
}
int __uflow(FILE *p0) {
  int retval;
  retval = 0;
  return retval;
}
long int a64l(const char *__s) {
  long int retval;
  retval = 0L;
  return retval;
}
int abs(int __x) {
  int retval;
  retval = 0;
  return retval;
}
void *aligned_alloc(size_t __alignment, size_t __size) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
void *alloca(size_t __size) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
int at_quick_exit(void (*__func)()) {
  int retval;
  retval = 0;
  return retval;
}
int atexit(void (*__func)()) {
  int retval;
  retval = 0;
  return retval;
}
double atof(const char *__nptr) {
  double retval;
  retval = 0.0;
  return retval;
}
int atoi(const char *__nptr) {
  int retval;
  retval = 0;
  return retval;
}
long int atol(const char *__nptr) {
  long int retval;
  retval = 0L;
  return retval;
}
long long int atoll(const char *__nptr) {
  long long int retval;
  retval = 0LL;
  return retval;
}
void *bsearch(const void *__key, const void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
void *calloc(size_t __nmemb, size_t __size) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
int clearenv() {
  int retval;
  retval = 0;
  return retval;
}
void clearerr(FILE *__stream) {
}
void clearerr_unlocked(FILE *__stream) {
}
char *ctermid(char *__s) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int dprintf(int __fd, const char *__fmt, ...) {
  int retval;
  retval = 0;
  return retval;
}
double drand48() {
  double retval;
  retval = 0.0;
  return retval;
}
int drand48_r(struct drand48_data *__buffer, double *__result) {
  int retval;
  retval = 0;
  return retval;
}
char *ecvt(double __value, int __ndigit, int *__decpt, int *__sign) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int ecvt_r(double __value, int __ndigit, int *__decpt, int *__sign, char *__buf, size_t __len) {
  int retval;
  retval = 0;
  return retval;
}
double erand48(unsigned short int __xsubi[3]) {
  double retval;
  retval = 0.0;
  return retval;
}
int erand48_r(unsigned short int __xsubi[3], struct drand48_data *__buffer, double *__result) {
  int retval;
  retval = 0;
  return retval;
}
int fclose(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
char *fcvt(double __value, int __ndigit, int *__decpt, int *__sign) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int fcvt_r(double __value, int __ndigit, int *__decpt, int *__sign, char *__buf, size_t __len) {
  int retval;
  retval = 0;
  return retval;
}
FILE *fdopen(int __fd, const char *__modes) {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
int feof(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int feof_unlocked(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int ferror(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int ferror_unlocked(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fflush(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fflush_unlocked(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fgetc(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fgetc_unlocked(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fgetpos(FILE *__stream, fpos_t *__pos) {
  int retval;
  retval = 0;
  return retval;
}
char *fgets(char *__s, int __n, FILE *__stream) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int fileno(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fileno_unlocked(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
void flockfile(FILE *__stream) {
}
FILE *fmemopen(void *__s, size_t __len, const char *__modes) {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
FILE *fopen(const char *__filename, const char *__modes) {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
int fprintf(FILE *__stream, const char *__format, ...) {
  int retval;
  retval = 0;
  return retval;
}
int fputc(int __c, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fputc_unlocked(int __c, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int fputs(const char *__s, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
size_t fread(void *__ptr, size_t __size, size_t __n, FILE *__stream) {
  size_t retval;
  retval = 0UL;
  return retval;
}
size_t fread_unlocked(void *__ptr, size_t __size, size_t __n, FILE *__stream) {
  size_t retval;
  retval = 0UL;
  return retval;
}
FILE *freopen(const char *__filename, const char *__modes, FILE *__stream) {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
int fscanf(FILE *__stream, const char *__format, ...) {
  int retval;
  retval = 0;
  return retval;
}
int fseek(FILE *__stream, long int __off, int __whence) {
  int retval;
  retval = 0;
  return retval;
}
int fseeko(FILE *__stream, __off_t __off, int __whence) {
  int retval;
  retval = 0;
  return retval;
}
int fsetpos(FILE *__stream, const fpos_t *__pos) {
  int retval;
  retval = 0;
  return retval;
}
long int ftell(FILE *__stream) {
  long int retval;
  retval = 0L;
  return retval;
}
__off_t ftello(FILE *__stream) {
  __off_t retval;
  retval = 0L;
  return retval;
}
int ftrylockfile(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
void funlockfile(FILE *__stream) {
}
size_t fwrite(const void *__ptr, size_t __size, size_t __n, FILE *__s) {
  size_t retval;
  retval = 0UL;
  return retval;
}
size_t fwrite_unlocked(const void *__ptr, size_t __size, size_t __n, FILE *__stream) {
  size_t retval;
  retval = 0UL;
  return retval;
}
char *gcvt(double __value, int __ndigit, char *__buf) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int getc(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int getc_unlocked(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int getchar() {
  int retval;
  retval = 0;
  return retval;
}
int getchar_unlocked() {
  int retval;
  retval = 0;
  return retval;
}
__ssize_t getdelim(char **__lineptr, size_t *__n, int __delimiter, FILE *__stream) {
  __ssize_t retval;
  retval = 0L;
  return retval;
}
char *getenv(const char *__name) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
__ssize_t getline(char **__lineptr, size_t *__n, FILE *__stream) {
  __ssize_t retval;
  retval = 0L;
  return retval;
}
int getloadavg(double __loadavg[], int __nelem) {
  int retval;
  retval = 0;
  return retval;
}
int getsubopt(char **__optionp, char * const *__tokens, char **__valuep) {
  int retval;
  retval = 0;
  return retval;
}
int getw(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
char *initstate(unsigned int __seed, char *__statebuf, size_t __statelen) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int initstate_r(unsigned int __seed, char *__statebuf, size_t __statelen, struct random_data *__buf) {
  int retval;
  retval = 0;
  return retval;
}
long int jrand48(unsigned short int __xsubi[3]) {
  long int retval;
  retval = 0L;
  return retval;
}
int jrand48_r(unsigned short int __xsubi[3], struct drand48_data *__buffer, long int *__result) {
  int retval;
  retval = 0;
  return retval;
}
char *l64a(long int __n) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
long int labs(long int __x) {
  long int retval;
  retval = 0L;
  return retval;
}
void lcong48(unsigned short int __param[7]) {
}
int lcong48_r(unsigned short int __param[7], struct drand48_data *__buffer) {
  int retval;
  retval = 0;
  return retval;
}
long long int llabs(long long int __x) {
  long long int retval;
  retval = 0LL;
  return retval;
}
long int lrand48() {
  long int retval;
  retval = 0L;
  return retval;
}
int lrand48_r(struct drand48_data *__buffer, long int *__result) {
  int retval;
  retval = 0;
  return retval;
}
int mblen(const char *__s, size_t __n) {
  int retval;
  retval = 0;
  return retval;
}
size_t mbstowcs(wchar_t *__pwcs, const char *__s, size_t __n) {
  size_t retval;
  retval = 0UL;
  return retval;
}
int mbtowc(wchar_t *__pwc, const char *__s, size_t __n) {
  int retval;
  retval = 0;
  return retval;
}
char *mkdtemp(char *__template) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int mkstemp(char *__template) {
  int retval;
  retval = 0;
  return retval;
}
int mkstemps(char *__template, int __suffixlen) {
  int retval;
  retval = 0;
  return retval;
}
char *mktemp(char *__template) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
long int mrand48() {
  long int retval;
  retval = 0L;
  return retval;
}
int mrand48_r(struct drand48_data *__buffer, long int *__result) {
  int retval;
  retval = 0;
  return retval;
}
long int nrand48(unsigned short int __xsubi[3]) {
  long int retval;
  retval = 0L;
  return retval;
}
int nrand48_r(unsigned short int __xsubi[3], struct drand48_data *__buffer, long int *__result) {
  int retval;
  retval = 0;
  return retval;
}
int on_exit(void (*__func)(int __status, void *__arg), void *__arg) {
  int retval;
  retval = 0;
  return retval;
}
FILE *open_memstream(char **__bufloc, size_t *__sizeloc) {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
int pclose(FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
void perror(const char *__s) {
}
FILE *popen(const char *__command, const char *__modes) {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
int posix_memalign(void **__memptr, size_t __alignment, size_t __size) {
  int retval;
  retval = 0;
  return retval;
}
int pselect(int __nfds, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const __sigset_t *__sigmask) {
  int retval;
  retval = 0;
  return retval;
}
int putc(int __c, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int putc_unlocked(int __c, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int putchar(int __c) {
  int retval;
  retval = 0;
  return retval;
}
int putchar_unlocked(int __c) {
  int retval;
  retval = 0;
  return retval;
}
int putenv(char *__string) {
  int retval;
  retval = 0;
  return retval;
}
int puts(const char *__s) {
  int retval;
  retval = 0;
  return retval;
}
int putw(int __w, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
char *qecvt(long double __value, int __ndigit, int *__decpt, int *__sign) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int qecvt_r(long double __value, int __ndigit, int *__decpt, int *__sign, char *__buf, size_t __len) {
  int retval;
  retval = 0;
  return retval;
}
char *qfcvt(long double __value, int __ndigit, int *__decpt, int *__sign) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int qfcvt_r(long double __value, int __ndigit, int *__decpt, int *__sign, char *__buf, size_t __len) {
  int retval;
  retval = 0;
  return retval;
}
char *qgcvt(long double __value, int __ndigit, char *__buf) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
void qsort(void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) {
}
void quick_exit(int __status) {
  fprintf(stderr, "Called method quick_exit that has attribute noreturn.\n");
  exit(1);
}
int rand() {
  int retval;
  retval = 0;
  return retval;
}
int rand_r(unsigned int *__seed) {
  int retval;
  retval = 0;
  return retval;
}
long int random() {
  long int retval;
  retval = 0L;
  return retval;
}
int random_r(struct random_data *__buf, int32_t *__result) {
  int retval;
  retval = 0;
  return retval;
}
void *realloc(void *__ptr, size_t __size) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
void *reallocarray(void *__ptr, size_t __nmemb, size_t __size) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
char *realpath(const char *__name, char *__resolved) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int remove(const char *__filename) {
  int retval;
  retval = 0;
  return retval;
}
int rename(const char *__old, const char *__new) {
  int retval;
  retval = 0;
  return retval;
}
int renameat(int __oldfd, const char *__old, int __newfd, const char *__new) {
  int retval;
  retval = 0;
  return retval;
}
void rewind(FILE *__stream) {
}
int rpmatch(const char *__response) {
  int retval;
  retval = 0;
  return retval;
}
int scanf(const char *__format, ...) {
  int retval;
  retval = 0;
  return retval;
}
unsigned short int *seed48(unsigned short int __seed16v[3]) {
  unsigned short int *retval;
  { unsigned short int *__tmp_var; __tmp_var = malloc(sizeof(unsigned short int)); retval = __tmp_var; }
  return retval;
}
int seed48_r(unsigned short int __seed16v[3], struct drand48_data *__buffer) {
  int retval;
  retval = 0;
  return retval;
}
int select(int __nfds, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout) {
  int retval;
  retval = 0;
  return retval;
}
void setbuf(FILE *__stream, char *__buf) {
}
void setbuffer(FILE *__stream, char *__buf, size_t __size) {
}
int setenv(const char *__name, const char *__value, int __replace) {
  int retval;
  retval = 0;
  return retval;
}
void setlinebuf(FILE *__stream) {
}
char *setstate(char *__statebuf) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int setstate_r(char *__statebuf, struct random_data *__buf) {
  int retval;
  retval = 0;
  return retval;
}
int setvbuf(FILE *__stream, char *__buf, int __modes, size_t __n) {
  int retval;
  retval = 0;
  return retval;
}
int snprintf(char *__s, size_t __maxlen, const char *__format, ...) {
  int retval;
  retval = 0;
  return retval;
}
int sprintf(char *__s, const char *__format, ...) {
  int retval;
  retval = 0;
  return retval;
}
void srand(unsigned int __seed) {
}
void srand48(long int __seedval) {
}
int srand48_r(long int __seedval, struct drand48_data *__buffer) {
  int retval;
  retval = 0;
  return retval;
}
void srandom(unsigned int __seed) {
}
int srandom_r(unsigned int __seed, struct random_data *__buf) {
  int retval;
  retval = 0;
  return retval;
}
int sscanf(const char *__s, const char *__format, ...) {
  int retval;
  retval = 0;
  return retval;
}
double strtod(const char *__nptr, char **__endptr) {
  double retval;
  retval = 0.0;
  return retval;
}
float strtof(const char *__nptr, char **__endptr) {
  float retval;
  retval = 0.0;
  return retval;
}
long int strtol(const char *__nptr, char **__endptr, int __base) {
  long int retval;
  retval = 0L;
  return retval;
}
long double strtold(const char *__nptr, char **__endptr) {
  long double retval;
  retval = 0.0;
  return retval;
}
long long int strtoll(const char *__nptr, char **__endptr, int __base) {
  long long int retval;
  retval = 0LL;
  return retval;
}
long long int strtoq(const char *__nptr, char **__endptr, int __base) {
  long long int retval;
  retval = 0LL;
  return retval;
}
unsigned long int strtoul(const char *__nptr, char **__endptr, int __base) {
  unsigned long int retval;
  retval = 0UL;
  return retval;
}
unsigned long long int strtoull(const char *__nptr, char **__endptr, int __base) {
  unsigned long long int retval;
  retval = 0ULL;
  return retval;
}
unsigned long long int strtouq(const char *__nptr, char **__endptr, int __base) {
  unsigned long long int retval;
  retval = 0ULL;
  return retval;
}
int system(const char *__command) {
  int retval;
  retval = 0;
  return retval;
}
char *tempnam(const char *__dir, const char *__pfx) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
FILE *tmpfile() {
  FILE *retval;
  { FILE *__tmp_var; __tmp_var = malloc(sizeof(FILE )); retval = __tmp_var; }
  return retval;
}
char *tmpnam(char *__s) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
char *tmpnam_r(char *__s) {
  char *retval;
  { char *__tmp_var; __tmp_var = malloc(sizeof(char)); retval = __tmp_var; }
  return retval;
}
int ungetc(int __c, FILE *__stream) {
  int retval;
  retval = 0;
  return retval;
}
int unsetenv(const char *__name) {
  int retval;
  retval = 0;
  return retval;
}
void *valloc(size_t __size) {
  void *retval;
  { void *__tmp_var; __tmp_var = malloc(4096U); retval = __tmp_var; }
  return retval;
}
int vdprintf(int __fd, const char *__fmt, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vfprintf(FILE *__s, const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vfscanf(FILE *__s, const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vprintf(const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vscanf(const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vsnprintf(char *__s, size_t __maxlen, const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vsprintf(char *__s, const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int vsscanf(const char *__s, const char *__format, __gnuc_va_list __arg) {
  int retval;
  retval = 0;
  return retval;
}
int wctomb(char *__s, wchar_t __wchar) {
  int retval;
  retval = 0;
  return retval;
}
