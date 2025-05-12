CONTROL AUTOMATON ErrorPath7

INITIAL STATE ARG3;

STATE USEFIRST ARG3 :
    MATCH "" -> GOTO ARG132;
    TRUE -> STOP;

STATE USEFIRST ARG132 :
    MATCH "typedef long unsigned int size_t;" -> GOTO ARG137;
    TRUE -> STOP;

STATE USEFIRST ARG137 :
    MATCH "typedef int wchar_t;" -> GOTO ARG139;
    TRUE -> STOP;

STATE USEFIRST ARG139 :
    MATCH "typedef enum\n{\n  P_ALL,\n  P_PID,\n  P_PGID\n} idtype_t;" -> GOTO ARG140;
    TRUE -> STOP;

STATE USEFIRST ARG140 :
    MATCH "typedef enum\n{\n  P_ALL,\n  P_PID,\n  P_PGID\n} idtype_t;" -> GOTO ARG141;
    TRUE -> STOP;

STATE USEFIRST ARG141 :
    MATCH "typedef struct\n  {\n    int quot;\n    int rem;\n  } div_t;" -> GOTO ARG142;
    TRUE -> STOP;

STATE USEFIRST ARG142 :
    MATCH "typedef struct\n  {\n    int quot;\n    int rem;\n  } div_t;" -> GOTO ARG145;
    TRUE -> STOP;

STATE USEFIRST ARG145 :
    MATCH "typedef struct\n  {\n    long int quot;\n    long int rem;\n  } ldiv_t;" -> GOTO ARG146;
    TRUE -> STOP;

STATE USEFIRST ARG146 :
    MATCH "typedef struct\n  {\n    long int quot;\n    long int rem;\n  } ldiv_t;" -> GOTO ARG147;
    TRUE -> STOP;

STATE USEFIRST ARG147 :
    MATCH "typedef struct\n  {\n    long long int quot;\n    long long int rem;\n  } lldiv_t;" -> GOTO ARG149;
    TRUE -> STOP;

STATE USEFIRST ARG149 :
    MATCH "typedef struct\n  {\n    long long int quot;\n    long long int rem;\n  } lldiv_t;" -> GOTO ARG150;
    TRUE -> STOP;

STATE USEFIRST ARG150 :
    MATCH "extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG151;
    TRUE -> STOP;

STATE USEFIRST ARG151 :
    MATCH "extern double atof (const char *__nptr)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG152;
    TRUE -> STOP;

STATE USEFIRST ARG152 :
    MATCH "extern int atoi (const char *__nptr)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG153;
    TRUE -> STOP;

STATE USEFIRST ARG153 :
    MATCH "extern long int atol (const char *__nptr)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG154;
    TRUE -> STOP;

STATE USEFIRST ARG154 :
    MATCH "extern long long int atoll (const char *__nptr)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG155;
    TRUE -> STOP;

STATE USEFIRST ARG155 :
    MATCH "extern double strtod (const char *__restrict __nptr,\n        char **__restrict __endptr)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG157;
    TRUE -> STOP;

STATE USEFIRST ARG157 :
    MATCH "extern float strtof (const char *__restrict __nptr,\n       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG158;
    TRUE -> STOP;

STATE USEFIRST ARG158 :
    MATCH "extern long double strtold (const char *__restrict __nptr,\n       char **__restrict __endptr)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG159;
    TRUE -> STOP;

STATE USEFIRST ARG159 :
    MATCH "extern long int strtol (const char *__restrict __nptr,\n   char **__restrict __endptr, int __base)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG160;
    TRUE -> STOP;

STATE USEFIRST ARG160 :
    MATCH "extern unsigned long int strtoul (const char *__restrict __nptr,\n      char **__restrict __endptr, int __base)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG161;
    TRUE -> STOP;

STATE USEFIRST ARG161 :
    MATCH "extern long long int strtoq (const char *__restrict __nptr,\n        char **__restrict __endptr, int __base)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG163;
    TRUE -> STOP;

STATE USEFIRST ARG163 :
    MATCH "extern unsigned long long int strtouq (const char *__restrict __nptr,\n           char **__restrict __endptr, int __base)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG164;
    TRUE -> STOP;

STATE USEFIRST ARG164 :
    MATCH "extern long long int strtoll (const char *__restrict __nptr,\n         char **__restrict __endptr, int __base)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG172;
    TRUE -> STOP;

STATE USEFIRST ARG172 :
    MATCH "extern unsigned long long int strtoull (const char *__restrict __nptr,\n     char **__restrict __endptr, int __base)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG175;
    TRUE -> STOP;

STATE USEFIRST ARG175 :
    MATCH "extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG176;
    TRUE -> STOP;

STATE USEFIRST ARG176 :
    MATCH "extern long int a64l (const char *__s)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG179;
    TRUE -> STOP;

STATE USEFIRST ARG179 :
    MATCH "typedef unsigned char __u_char;" -> GOTO ARG180;
    TRUE -> STOP;

STATE USEFIRST ARG180 :
    MATCH "typedef unsigned short int __u_short;" -> GOTO ARG181;
    TRUE -> STOP;

STATE USEFIRST ARG181 :
    MATCH "typedef unsigned int __u_int;" -> GOTO ARG182;
    TRUE -> STOP;

STATE USEFIRST ARG182 :
    MATCH "typedef unsigned long int __u_long;" -> GOTO ARG184;
    TRUE -> STOP;

STATE USEFIRST ARG184 :
    MATCH "typedef signed char __int8_t;" -> GOTO ARG185;
    TRUE -> STOP;

STATE USEFIRST ARG185 :
    MATCH "typedef unsigned char __uint8_t;" -> GOTO ARG186;
    TRUE -> STOP;

STATE USEFIRST ARG186 :
    MATCH "typedef signed short int __int16_t;" -> GOTO ARG187;
    TRUE -> STOP;

STATE USEFIRST ARG187 :
    MATCH "typedef unsigned short int __uint16_t;" -> GOTO ARG188;
    TRUE -> STOP;

STATE USEFIRST ARG188 :
    MATCH "typedef signed int __int32_t;" -> GOTO ARG189;
    TRUE -> STOP;

STATE USEFIRST ARG189 :
    MATCH "typedef unsigned int __uint32_t;" -> GOTO ARG190;
    TRUE -> STOP;

STATE USEFIRST ARG190 :
    MATCH "typedef signed long int __int64_t;" -> GOTO ARG191;
    TRUE -> STOP;

STATE USEFIRST ARG191 :
    MATCH "typedef unsigned long int __uint64_t;" -> GOTO ARG192;
    TRUE -> STOP;

STATE USEFIRST ARG192 :
    MATCH "typedef __int8_t __int_least8_t;" -> GOTO ARG193;
    TRUE -> STOP;

STATE USEFIRST ARG193 :
    MATCH "typedef __uint8_t __uint_least8_t;" -> GOTO ARG194;
    TRUE -> STOP;

STATE USEFIRST ARG194 :
    MATCH "typedef __int16_t __int_least16_t;" -> GOTO ARG195;
    TRUE -> STOP;

STATE USEFIRST ARG195 :
    MATCH "typedef __uint16_t __uint_least16_t;" -> GOTO ARG196;
    TRUE -> STOP;

STATE USEFIRST ARG196 :
    MATCH "typedef __int32_t __int_least32_t;" -> GOTO ARG197;
    TRUE -> STOP;

STATE USEFIRST ARG197 :
    MATCH "typedef __uint32_t __uint_least32_t;" -> GOTO ARG200;
    TRUE -> STOP;

STATE USEFIRST ARG200 :
    MATCH "typedef __int64_t __int_least64_t;" -> GOTO ARG201;
    TRUE -> STOP;

STATE USEFIRST ARG201 :
    MATCH "typedef __uint64_t __uint_least64_t;" -> GOTO ARG202;
    TRUE -> STOP;

STATE USEFIRST ARG202 :
    MATCH "typedef long int __quad_t;" -> GOTO ARG203;
    TRUE -> STOP;

STATE USEFIRST ARG203 :
    MATCH "typedef unsigned long int __u_quad_t;" -> GOTO ARG204;
    TRUE -> STOP;

STATE USEFIRST ARG204 :
    MATCH "typedef long int __intmax_t;" -> GOTO ARG205;
    TRUE -> STOP;

STATE USEFIRST ARG205 :
    MATCH "typedef unsigned long int __uintmax_t;" -> GOTO ARG206;
    TRUE -> STOP;

STATE USEFIRST ARG206 :
    MATCH "typedef unsigned long int __dev_t;" -> GOTO ARG208;
    TRUE -> STOP;

STATE USEFIRST ARG208 :
    MATCH "typedef unsigned int __uid_t;" -> GOTO ARG209;
    TRUE -> STOP;

STATE USEFIRST ARG209 :
    MATCH "typedef unsigned int __gid_t;" -> GOTO ARG210;
    TRUE -> STOP;

STATE USEFIRST ARG210 :
    MATCH "typedef unsigned long int __ino_t;" -> GOTO ARG211;
    TRUE -> STOP;

STATE USEFIRST ARG211 :
    MATCH "typedef unsigned long int __ino64_t;" -> GOTO ARG212;
    TRUE -> STOP;

STATE USEFIRST ARG212 :
    MATCH "typedef unsigned int __mode_t;" -> GOTO ARG213;
    TRUE -> STOP;

STATE USEFIRST ARG213 :
    MATCH "typedef unsigned long int __nlink_t;" -> GOTO ARG214;
    TRUE -> STOP;

STATE USEFIRST ARG214 :
    MATCH "typedef long int __off_t;" -> GOTO ARG216;
    TRUE -> STOP;

STATE USEFIRST ARG216 :
    MATCH "typedef long int __off64_t;" -> GOTO ARG217;
    TRUE -> STOP;

STATE USEFIRST ARG217 :
    MATCH "typedef int __pid_t;" -> GOTO ARG218;
    TRUE -> STOP;

STATE USEFIRST ARG218 :
    MATCH "typedef struct { int __val[2]; } __fsid_t;" -> GOTO ARG221;
    TRUE -> STOP;

STATE USEFIRST ARG221 :
    MATCH "typedef struct { int __val[2]; } __fsid_t;" -> GOTO ARG223;
    TRUE -> STOP;

STATE USEFIRST ARG223 :
    MATCH "typedef long int __clock_t;" -> GOTO ARG224;
    TRUE -> STOP;

STATE USEFIRST ARG224 :
    MATCH "typedef unsigned long int __rlim_t;" -> GOTO ARG228;
    TRUE -> STOP;

STATE USEFIRST ARG228 :
    MATCH "typedef unsigned long int __rlim64_t;" -> GOTO ARG230;
    TRUE -> STOP;

STATE USEFIRST ARG230 :
    MATCH "typedef unsigned int __id_t;" -> GOTO ARG233;
    TRUE -> STOP;

STATE USEFIRST ARG233 :
    MATCH "typedef long int __time_t;" -> GOTO ARG234;
    TRUE -> STOP;

STATE USEFIRST ARG234 :
    MATCH "typedef unsigned int __useconds_t;" -> GOTO ARG235;
    TRUE -> STOP;

STATE USEFIRST ARG235 :
    MATCH "typedef long int __suseconds_t;" -> GOTO ARG236;
    TRUE -> STOP;

STATE USEFIRST ARG236 :
    MATCH "typedef int __daddr_t;" -> GOTO ARG237;
    TRUE -> STOP;

STATE USEFIRST ARG237 :
    MATCH "typedef int __key_t;" -> GOTO ARG238;
    TRUE -> STOP;

STATE USEFIRST ARG238 :
    MATCH "typedef int __clockid_t;" -> GOTO ARG239;
    TRUE -> STOP;

STATE USEFIRST ARG239 :
    MATCH "typedef void * __timer_t;" -> GOTO ARG240;
    TRUE -> STOP;

STATE USEFIRST ARG240 :
    MATCH "typedef long int __blksize_t;" -> GOTO ARG242;
    TRUE -> STOP;

STATE USEFIRST ARG242 :
    MATCH "typedef long int __blkcnt_t;" -> GOTO ARG244;
    TRUE -> STOP;

STATE USEFIRST ARG244 :
    MATCH "typedef long int __blkcnt64_t;" -> GOTO ARG245;
    TRUE -> STOP;

STATE USEFIRST ARG245 :
    MATCH "typedef unsigned long int __fsblkcnt_t;" -> GOTO ARG246;
    TRUE -> STOP;

STATE USEFIRST ARG246 :
    MATCH "typedef unsigned long int __fsblkcnt64_t;" -> GOTO ARG247;
    TRUE -> STOP;

STATE USEFIRST ARG247 :
    MATCH "typedef unsigned long int __fsfilcnt_t;" -> GOTO ARG249;
    TRUE -> STOP;

STATE USEFIRST ARG249 :
    MATCH "typedef unsigned long int __fsfilcnt64_t;" -> GOTO ARG251;
    TRUE -> STOP;

STATE USEFIRST ARG251 :
    MATCH "typedef long int __fsword_t;" -> GOTO ARG252;
    TRUE -> STOP;

STATE USEFIRST ARG252 :
    MATCH "typedef long int __ssize_t;" -> GOTO ARG253;
    TRUE -> STOP;

STATE USEFIRST ARG253 :
    MATCH "typedef long int __syscall_slong_t;" -> GOTO ARG254;
    TRUE -> STOP;

STATE USEFIRST ARG254 :
    MATCH "typedef unsigned long int __syscall_ulong_t;" -> GOTO ARG258;
    TRUE -> STOP;

STATE USEFIRST ARG258 :
    MATCH "typedef __off64_t __loff_t;" -> GOTO ARG260;
    TRUE -> STOP;

STATE USEFIRST ARG260 :
    MATCH "typedef char *__caddr_t;" -> GOTO ARG263;
    TRUE -> STOP;

STATE USEFIRST ARG263 :
    MATCH "typedef long int __intptr_t;" -> GOTO ARG273;
    TRUE -> STOP;

STATE USEFIRST ARG273 :
    MATCH "typedef unsigned int __socklen_t;" -> GOTO ARG274;
    TRUE -> STOP;

STATE USEFIRST ARG274 :
    MATCH "typedef int __sig_atomic_t;" -> GOTO ARG276;
    TRUE -> STOP;

STATE USEFIRST ARG276 :
    MATCH "typedef __u_char u_char;" -> GOTO ARG277;
    TRUE -> STOP;

STATE USEFIRST ARG277 :
    MATCH "typedef __u_short u_short;" -> GOTO ARG280;
    TRUE -> STOP;

STATE USEFIRST ARG280 :
    MATCH "typedef __u_int u_int;" -> GOTO ARG281;
    TRUE -> STOP;

STATE USEFIRST ARG281 :
    MATCH "typedef __u_long u_long;" -> GOTO ARG283;
    TRUE -> STOP;

STATE USEFIRST ARG283 :
    MATCH "typedef __quad_t quad_t;" -> GOTO ARG284;
    TRUE -> STOP;

STATE USEFIRST ARG284 :
    MATCH "typedef __u_quad_t u_quad_t;" -> GOTO ARG287;
    TRUE -> STOP;

STATE USEFIRST ARG287 :
    MATCH "typedef __fsid_t fsid_t;" -> GOTO ARG288;
    TRUE -> STOP;

STATE USEFIRST ARG288 :
    MATCH "typedef __loff_t loff_t;" -> GOTO ARG298;
    TRUE -> STOP;

STATE USEFIRST ARG298 :
    MATCH "typedef __ino_t ino_t;" -> GOTO ARG301;
    TRUE -> STOP;

STATE USEFIRST ARG301 :
    MATCH "typedef __dev_t dev_t;" -> GOTO ARG302;
    TRUE -> STOP;

STATE USEFIRST ARG302 :
    MATCH "typedef __gid_t gid_t;" -> GOTO ARG303;
    TRUE -> STOP;

STATE USEFIRST ARG303 :
    MATCH "typedef __mode_t mode_t;" -> GOTO ARG304;
    TRUE -> STOP;

STATE USEFIRST ARG304 :
    MATCH "typedef __nlink_t nlink_t;" -> GOTO ARG305;
    TRUE -> STOP;

STATE USEFIRST ARG305 :
    MATCH "typedef __uid_t uid_t;" -> GOTO ARG306;
    TRUE -> STOP;

STATE USEFIRST ARG306 :
    MATCH "typedef __off_t off_t;" -> GOTO ARG307;
    TRUE -> STOP;

STATE USEFIRST ARG307 :
    MATCH "typedef __pid_t pid_t;" -> GOTO ARG308;
    TRUE -> STOP;

STATE USEFIRST ARG308 :
    MATCH "typedef __id_t id_t;" -> GOTO ARG309;
    TRUE -> STOP;

STATE USEFIRST ARG309 :
    MATCH "typedef __ssize_t ssize_t;" -> GOTO ARG310;
    TRUE -> STOP;

STATE USEFIRST ARG310 :
    MATCH "typedef __daddr_t daddr_t;" -> GOTO ARG311;
    TRUE -> STOP;

STATE USEFIRST ARG311 :
    MATCH "typedef __caddr_t caddr_t;" -> GOTO ARG312;
    TRUE -> STOP;

STATE USEFIRST ARG312 :
    MATCH "typedef __key_t key_t;" -> GOTO ARG313;
    TRUE -> STOP;

STATE USEFIRST ARG313 :
    MATCH "typedef __clock_t clock_t;" -> GOTO ARG314;
    TRUE -> STOP;

STATE USEFIRST ARG314 :
    MATCH "typedef __clockid_t clockid_t;" -> GOTO ARG315;
    TRUE -> STOP;

STATE USEFIRST ARG315 :
    MATCH "typedef __time_t time_t;" -> GOTO ARG316;
    TRUE -> STOP;

STATE USEFIRST ARG316 :
    MATCH "typedef __timer_t timer_t;" -> GOTO ARG317;
    TRUE -> STOP;

STATE USEFIRST ARG317 :
    MATCH "typedef unsigned long int ulong;" -> GOTO ARG318;
    TRUE -> STOP;

STATE USEFIRST ARG318 :
    MATCH "typedef unsigned short int ushort;" -> GOTO ARG319;
    TRUE -> STOP;

STATE USEFIRST ARG319 :
    MATCH "typedef unsigned int uint;" -> GOTO ARG322;
    TRUE -> STOP;

STATE USEFIRST ARG322 :
    MATCH "typedef __int8_t int8_t;" -> GOTO ARG329;
    TRUE -> STOP;

STATE USEFIRST ARG329 :
    MATCH "typedef __int16_t int16_t;" -> GOTO ARG330;
    TRUE -> STOP;

STATE USEFIRST ARG330 :
    MATCH "typedef __int32_t int32_t;" -> GOTO ARG331;
    TRUE -> STOP;

STATE USEFIRST ARG331 :
    MATCH "typedef __int64_t int64_t;" -> GOTO ARG333;
    TRUE -> STOP;

STATE USEFIRST ARG333 :
    MATCH "typedef __uint8_t u_int8_t;" -> GOTO ARG334;
    TRUE -> STOP;

STATE USEFIRST ARG334 :
    MATCH "typedef __uint16_t u_int16_t;" -> GOTO ARG335;
    TRUE -> STOP;

STATE USEFIRST ARG335 :
    MATCH "typedef __uint32_t u_int32_t;" -> GOTO ARG338;
    TRUE -> STOP;

STATE USEFIRST ARG338 :
    MATCH "typedef __uint64_t u_int64_t;" -> GOTO ARG341;
    TRUE -> STOP;

STATE USEFIRST ARG341 :
    MATCH "typedef int register_t __attribute__ ((__mode__ (__word__)));" -> GOTO ARG344;
    TRUE -> STOP;

STATE USEFIRST ARG344 :
    MATCH "static __inline __uint16_t __bswap_16 (__uint16_t __bsx)" -> GOTO ARG346;
    TRUE -> STOP;

STATE USEFIRST ARG346 :
    MATCH "static __inline __uint32_t __bswap_32 (__uint32_t __bsx)" -> GOTO ARG361;
    TRUE -> STOP;

STATE USEFIRST ARG361 :
    MATCH "static __inline __uint64_t __bswap_64 (__uint64_t __bsx)" -> GOTO ARG362;
    TRUE -> STOP;

STATE USEFIRST ARG362 :
    MATCH "static __inline __uint16_t __uint16_identity (__uint16_t __x)" -> GOTO ARG363;
    TRUE -> STOP;

STATE USEFIRST ARG363 :
    MATCH "static __inline __uint32_t __uint32_identity (__uint32_t __x)" -> GOTO ARG364;
    TRUE -> STOP;

STATE USEFIRST ARG364 :
    MATCH "static __inline __uint64_t __uint64_identity (__uint64_t __x)" -> GOTO ARG365;
    TRUE -> STOP;

STATE USEFIRST ARG365 :
    MATCH "typedef struct\n{\n  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];\n} __sigset_t;" -> GOTO ARG366;
    TRUE -> STOP;

STATE USEFIRST ARG366 :
    MATCH "typedef struct\n{\n  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];\n} __sigset_t;" -> GOTO ARG367;
    TRUE -> STOP;

STATE USEFIRST ARG367 :
    MATCH "typedef __sigset_t sigset_t;" -> GOTO ARG368;
    TRUE -> STOP;

STATE USEFIRST ARG368 :
    MATCH "struct timeval\n{\n  __time_t tv_sec;\n  __suseconds_t tv_usec;\n};" -> GOTO ARG369;
    TRUE -> STOP;

STATE USEFIRST ARG369 :
    MATCH "struct timespec\n{\n  __time_t tv_sec;\n\n\n\n  __syscall_slong_t tv_nsec;\n# 26 \"/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h\" 3 4\n};" -> GOTO ARG370;
    TRUE -> STOP;

STATE USEFIRST ARG370 :
    MATCH "typedef __suseconds_t suseconds_t;" -> GOTO ARG371;
    TRUE -> STOP;

STATE USEFIRST ARG371 :
    MATCH "typedef long int __fd_mask;" -> GOTO ARG372;
    TRUE -> STOP;

STATE USEFIRST ARG372 :
    MATCH "typedef struct\n  {\n\n\n\n\n\n\n    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];\n\n\n  } fd_set;" -> GOTO ARG373;
    TRUE -> STOP;

STATE USEFIRST ARG373 :
    MATCH "typedef struct\n  {\n\n\n\n\n\n\n    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];\n\n\n  } fd_set;" -> GOTO ARG374;
    TRUE -> STOP;

STATE USEFIRST ARG374 :
    MATCH "typedef __fd_mask fd_mask;" -> GOTO ARG375;
    TRUE -> STOP;

STATE USEFIRST ARG375 :
    MATCH "extern int select (int __nfds, fd_set *__restrict __readfds,\n     fd_set *__restrict __writefds,\n     fd_set *__restrict __exceptfds,\n     struct timeval *__restrict __timeout);" -> GOTO ARG376;
    TRUE -> STOP;

STATE USEFIRST ARG376 :
    MATCH "extern int pselect (int __nfds, fd_set *__restrict __readfds,\n      fd_set *__restrict __writefds,\n      fd_set *__restrict __exceptfds,\n      const struct timespec *__restrict __timeout,\n      const __sigset_t *__restrict __sigmask);" -> GOTO ARG378;
    TRUE -> STOP;

STATE USEFIRST ARG378 :
    MATCH "typedef __blksize_t blksize_t;" -> GOTO ARG380;
    TRUE -> STOP;

STATE USEFIRST ARG380 :
    MATCH "typedef __blkcnt_t blkcnt_t;" -> GOTO ARG381;
    TRUE -> STOP;

STATE USEFIRST ARG381 :
    MATCH "typedef __fsblkcnt_t fsblkcnt_t;" -> GOTO ARG384;
    TRUE -> STOP;

STATE USEFIRST ARG384 :
    MATCH "typedef __fsfilcnt_t fsfilcnt_t;" -> GOTO ARG386;
    TRUE -> STOP;

STATE USEFIRST ARG386 :
    MATCH "typedef struct __pthread_internal_list\n{\n  struct __pthread_internal_list *__prev;\n  struct __pthread_internal_list *__next;\n} __pthread_list_t;" -> GOTO ARG388;
    TRUE -> STOP;

STATE USEFIRST ARG388 :
    MATCH "typedef struct __pthread_internal_list\n{\n  struct __pthread_internal_list *__prev;\n  struct __pthread_internal_list *__next;\n} __pthread_list_t;" -> GOTO ARG389;
    TRUE -> STOP;

STATE USEFIRST ARG389 :
    MATCH "typedef struct __pthread_internal_slist\n{\n  struct __pthread_internal_slist *__next;\n} __pthread_slist_t;" -> GOTO ARG390;
    TRUE -> STOP;

STATE USEFIRST ARG390 :
    MATCH "typedef struct __pthread_internal_slist\n{\n  struct __pthread_internal_slist *__next;\n} __pthread_slist_t;" -> GOTO ARG391;
    TRUE -> STOP;

STATE USEFIRST ARG391 :
    MATCH "struct __pthread_mutex_s\n{\n  int __lock;\n  unsigned int __count;\n  int __owner;\n\n  unsigned int __nusers;\n\n\n\n  int __kind;\n\n  short __spins;\n  short __elision;\n  __pthread_list_t __list;\n# 53 \"/usr/include/x86_64-linux-gnu/bits/struct_mutex.h\" 3 4\n};" -> GOTO ARG392;
    TRUE -> STOP;

STATE USEFIRST ARG392 :
    MATCH "struct __pthread_rwlock_arch_t\n{\n  unsigned int __readers;\n  unsigned int __writers;\n  unsigned int __wrphase_futex;\n  unsigned int __writers_futex;\n  unsigned int __pad3;\n  unsigned int __pad4;\n\n  int __cur_writer;\n  int __shared;\n  signed char __rwelision;\n\n\n\n\n  unsigned char __pad1[7];\n\n\n  unsigned long int __pad2;\n\n\n  unsigned int __flags;\n# 55 \"/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h\" 3 4\n};" -> GOTO ARG394;
    TRUE -> STOP;

STATE USEFIRST ARG394 :
    MATCH "struct __pthread_cond_s\n{\n  __extension__ union\n  {\n    __extension__ unsigned long long int __wseq;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __wseq32;\n  };\n  __extension__ union\n  {\n    __extension__ unsigned long long int __g1_start;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __g1_start32;\n  };\n  unsigned int __g_refs[2] ;\n  unsigned int __g_size[2];\n  unsigned int __g1_orig_size;\n  unsigned int __wrefs;\n  unsigned int __g_signals[2];\n};" -> GOTO ARG395;
    TRUE -> STOP;

STATE USEFIRST ARG395 :
    MATCH "struct __pthread_cond_s\n{\n  __extension__ union\n  {\n    __extension__ unsigned long long int __wseq;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __wseq32;\n  };\n  __extension__ union\n  {\n    __extension__ unsigned long long int __g1_start;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __g1_start32;\n  };\n  unsigned int __g_refs[2] ;\n  unsigned int __g_size[2];\n  unsigned int __g1_orig_size;\n  unsigned int __wrefs;\n  unsigned int __g_signals[2];\n};" -> GOTO ARG396;
    TRUE -> STOP;

STATE USEFIRST ARG396 :
    MATCH "struct __pthread_cond_s\n{\n  __extension__ union\n  {\n    __extension__ unsigned long long int __wseq;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __wseq32;\n  };\n  __extension__ union\n  {\n    __extension__ unsigned long long int __g1_start;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __g1_start32;\n  };\n  unsigned int __g_refs[2] ;\n  unsigned int __g_size[2];\n  unsigned int __g1_orig_size;\n  unsigned int __wrefs;\n  unsigned int __g_signals[2];\n};" -> GOTO ARG397;
    TRUE -> STOP;

STATE USEFIRST ARG397 :
    MATCH "struct __pthread_cond_s\n{\n  __extension__ union\n  {\n    __extension__ unsigned long long int __wseq;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __wseq32;\n  };\n  __extension__ union\n  {\n    __extension__ unsigned long long int __g1_start;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __g1_start32;\n  };\n  unsigned int __g_refs[2] ;\n  unsigned int __g_size[2];\n  unsigned int __g1_orig_size;\n  unsigned int __wrefs;\n  unsigned int __g_signals[2];\n};" -> GOTO ARG398;
    TRUE -> STOP;

STATE USEFIRST ARG398 :
    MATCH "struct __pthread_cond_s\n{\n  __extension__ union\n  {\n    __extension__ unsigned long long int __wseq;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __wseq32;\n  };\n  __extension__ union\n  {\n    __extension__ unsigned long long int __g1_start;\n    struct\n    {\n      unsigned int __low;\n      unsigned int __high;\n    } __g1_start32;\n  };\n  unsigned int __g_refs[2] ;\n  unsigned int __g_size[2];\n  unsigned int __g1_orig_size;\n  unsigned int __wrefs;\n  unsigned int __g_signals[2];\n};" -> GOTO ARG399;
    TRUE -> STOP;

STATE USEFIRST ARG399 :
    MATCH "typedef unsigned long int pthread_t;" -> GOTO ARG400;
    TRUE -> STOP;

STATE USEFIRST ARG400 :
    MATCH "typedef union\n{\n  char __size[4];\n  int __align;\n} pthread_mutexattr_t;" -> GOTO ARG401;
    TRUE -> STOP;

STATE USEFIRST ARG401 :
    MATCH "typedef union\n{\n  char __size[4];\n  int __align;\n} pthread_mutexattr_t;" -> GOTO ARG402;
    TRUE -> STOP;

STATE USEFIRST ARG402 :
    MATCH "typedef union\n{\n  char __size[4];\n  int __align;\n} pthread_condattr_t;" -> GOTO ARG403;
    TRUE -> STOP;

STATE USEFIRST ARG403 :
    MATCH "typedef union\n{\n  char __size[4];\n  int __align;\n} pthread_condattr_t;" -> GOTO ARG404;
    TRUE -> STOP;

STATE USEFIRST ARG404 :
    MATCH "typedef unsigned int pthread_key_t;" -> GOTO ARG405;
    TRUE -> STOP;

STATE USEFIRST ARG405 :
    MATCH "typedef int pthread_once_t;" -> GOTO ARG406;
    TRUE -> STOP;

STATE USEFIRST ARG406 :
    MATCH "union pthread_attr_t\n{\n  char __size[56];\n  long int __align;\n};" -> GOTO ARG407;
    TRUE -> STOP;

STATE USEFIRST ARG407 :
    MATCH "typedef union pthread_attr_t pthread_attr_t;" -> GOTO ARG408;
    TRUE -> STOP;

STATE USEFIRST ARG408 :
    MATCH "typedef union\n{\n  struct __pthread_mutex_s __data;\n  char __size[40];\n  long int __align;\n} pthread_mutex_t;" -> GOTO ARG409;
    TRUE -> STOP;

STATE USEFIRST ARG409 :
    MATCH "typedef union\n{\n  struct __pthread_mutex_s __data;\n  char __size[40];\n  long int __align;\n} pthread_mutex_t;" -> GOTO ARG410;
    TRUE -> STOP;

STATE USEFIRST ARG410 :
    MATCH "typedef union\n{\n  struct __pthread_cond_s __data;\n  char __size[48];\n  __extension__ long long int __align;\n} pthread_cond_t;" -> GOTO ARG411;
    TRUE -> STOP;

STATE USEFIRST ARG411 :
    MATCH "typedef union\n{\n  struct __pthread_cond_s __data;\n  char __size[48];\n  __extension__ long long int __align;\n} pthread_cond_t;" -> GOTO ARG412;
    TRUE -> STOP;

STATE USEFIRST ARG412 :
    MATCH "typedef union\n{\n  struct __pthread_rwlock_arch_t __data;\n  char __size[56];\n  long int __align;\n} pthread_rwlock_t;" -> GOTO ARG413;
    TRUE -> STOP;

STATE USEFIRST ARG413 :
    MATCH "typedef union\n{\n  struct __pthread_rwlock_arch_t __data;\n  char __size[56];\n  long int __align;\n} pthread_rwlock_t;" -> GOTO ARG414;
    TRUE -> STOP;

STATE USEFIRST ARG414 :
    MATCH "typedef union\n{\n  char __size[8];\n  long int __align;\n} pthread_rwlockattr_t;" -> GOTO ARG415;
    TRUE -> STOP;

STATE USEFIRST ARG415 :
    MATCH "typedef union\n{\n  char __size[8];\n  long int __align;\n} pthread_rwlockattr_t;" -> GOTO ARG416;
    TRUE -> STOP;

STATE USEFIRST ARG416 :
    MATCH "typedef volatile int pthread_spinlock_t;" -> GOTO ARG417;
    TRUE -> STOP;

STATE USEFIRST ARG417 :
    MATCH "typedef union\n{\n  char __size[32];\n  long int __align;\n} pthread_barrier_t;" -> GOTO ARG418;
    TRUE -> STOP;

STATE USEFIRST ARG418 :
    MATCH "typedef union\n{\n  char __size[32];\n  long int __align;\n} pthread_barrier_t;" -> GOTO ARG419;
    TRUE -> STOP;

STATE USEFIRST ARG419 :
    MATCH "typedef union\n{\n  char __size[4];\n  int __align;\n} pthread_barrierattr_t;" -> GOTO ARG420;
    TRUE -> STOP;

STATE USEFIRST ARG420 :
    MATCH "typedef union\n{\n  char __size[4];\n  int __align;\n} pthread_barrierattr_t;" -> GOTO ARG421;
    TRUE -> STOP;

STATE USEFIRST ARG421 :
    MATCH "extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG422;
    TRUE -> STOP;

STATE USEFIRST ARG422 :
    MATCH "extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG423;
    TRUE -> STOP;

STATE USEFIRST ARG423 :
    MATCH "extern char *initstate (unsigned int __seed, char *__statebuf,\n   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));" -> GOTO ARG424;
    TRUE -> STOP;

STATE USEFIRST ARG424 :
    MATCH "extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG425;
    TRUE -> STOP;

STATE USEFIRST ARG425 :
    MATCH "struct random_data\n  {\n    int32_t *fptr;\n    int32_t *rptr;\n    int32_t *state;\n    int rand_type;\n    int rand_deg;\n    int rand_sep;\n    int32_t *end_ptr;\n  };" -> GOTO ARG426;
    TRUE -> STOP;

STATE USEFIRST ARG426 :
    MATCH "extern int random_r (struct random_data *__restrict __buf,\n       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG427;
    TRUE -> STOP;

STATE USEFIRST ARG427 :
    MATCH "extern int srandom_r (unsigned int __seed, struct random_data *__buf)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));" -> GOTO ARG428;
    TRUE -> STOP;

STATE USEFIRST ARG428 :
    MATCH "extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,\n   size_t __statelen,\n   struct random_data *__restrict __buf)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));" -> GOTO ARG429;
    TRUE -> STOP;

STATE USEFIRST ARG429 :
    MATCH "extern int setstate_r (char *__restrict __statebuf,\n         struct random_data *__restrict __buf)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG430;
    TRUE -> STOP;

STATE USEFIRST ARG430 :
    MATCH "extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG431;
    TRUE -> STOP;

STATE USEFIRST ARG431 :
    MATCH "extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG432;
    TRUE -> STOP;

STATE USEFIRST ARG432 :
    MATCH "extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG433;
    TRUE -> STOP;

STATE USEFIRST ARG433 :
    MATCH "extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG434;
    TRUE -> STOP;

STATE USEFIRST ARG434 :
    MATCH "extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG435;
    TRUE -> STOP;

STATE USEFIRST ARG435 :
    MATCH "extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG436;
    TRUE -> STOP;

STATE USEFIRST ARG436 :
    MATCH "extern long int nrand48 (unsigned short int __xsubi[3])\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG437;
    TRUE -> STOP;

STATE USEFIRST ARG437 :
    MATCH "extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG438;
    TRUE -> STOP;

STATE USEFIRST ARG438 :
    MATCH "extern long int jrand48 (unsigned short int __xsubi[3])\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG439;
    TRUE -> STOP;

STATE USEFIRST ARG439 :
    MATCH "extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG440;
    TRUE -> STOP;

STATE USEFIRST ARG440 :
    MATCH "extern unsigned short int *seed48 (unsigned short int __seed16v[3])\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG441;
    TRUE -> STOP;

STATE USEFIRST ARG441 :
    MATCH "extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG442;
    TRUE -> STOP;

STATE USEFIRST ARG442 :
    MATCH "struct drand48_data\n  {\n    unsigned short int __x[3];\n    unsigned short int __old_x[3];\n    unsigned short int __c;\n    unsigned short int __init;\n    __extension__ unsigned long long int __a;\n\n  };" -> GOTO ARG443;
    TRUE -> STOP;

STATE USEFIRST ARG443 :
    MATCH "extern int drand48_r (struct drand48_data *__restrict __buffer,\n        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG444;
    TRUE -> STOP;

STATE USEFIRST ARG444 :
    MATCH "extern int erand48_r (unsigned short int __xsubi[3],\n        struct drand48_data *__restrict __buffer,\n        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG445;
    TRUE -> STOP;

STATE USEFIRST ARG445 :
    MATCH "extern int lrand48_r (struct drand48_data *__restrict __buffer,\n        long int *__restrict __result)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG446;
    TRUE -> STOP;

STATE USEFIRST ARG446 :
    MATCH "extern int nrand48_r (unsigned short int __xsubi[3],\n        struct drand48_data *__restrict __buffer,\n        long int *__restrict __result)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG447;
    TRUE -> STOP;

STATE USEFIRST ARG447 :
    MATCH "extern int mrand48_r (struct drand48_data *__restrict __buffer,\n        long int *__restrict __result)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG448;
    TRUE -> STOP;

STATE USEFIRST ARG448 :
    MATCH "extern int jrand48_r (unsigned short int __xsubi[3],\n        struct drand48_data *__restrict __buffer,\n        long int *__restrict __result)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG449;
    TRUE -> STOP;

STATE USEFIRST ARG449 :
    MATCH "extern int srand48_r (long int __seedval, struct drand48_data *__buffer)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));" -> GOTO ARG450;
    TRUE -> STOP;

STATE USEFIRST ARG450 :
    MATCH "extern int seed48_r (unsigned short int __seed16v[3],\n       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG451;
    TRUE -> STOP;

STATE USEFIRST ARG451 :
    MATCH "extern int lcong48_r (unsigned short int __param[7],\n        struct drand48_data *__buffer)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));" -> GOTO ARG452;
    TRUE -> STOP;

STATE USEFIRST ARG452 :
    MATCH "extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))\n     __attribute__ ((__alloc_size__ (1))) ;" -> GOTO ARG453;
    TRUE -> STOP;

STATE USEFIRST ARG453 :
    MATCH "extern void *calloc (size_t __nmemb, size_t __size)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;" -> GOTO ARG454;
    TRUE -> STOP;

STATE USEFIRST ARG454 :
    MATCH "extern void *realloc (void *__ptr, size_t __size)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));" -> GOTO ARG455;
    TRUE -> STOP;

STATE USEFIRST ARG455 :
    MATCH "extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))\n     __attribute__ ((__alloc_size__ (2, 3)));" -> GOTO ARG456;
    TRUE -> STOP;

STATE USEFIRST ARG456 :
    MATCH "extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG457;
    TRUE -> STOP;

STATE USEFIRST ARG457 :
    MATCH "extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG458;
    TRUE -> STOP;

STATE USEFIRST ARG458 :
    MATCH "extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))\n     __attribute__ ((__alloc_size__ (1))) ;" -> GOTO ARG459;
    TRUE -> STOP;

STATE USEFIRST ARG459 :
    MATCH "extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG460;
    TRUE -> STOP;

STATE USEFIRST ARG460 :
    MATCH "extern void *aligned_alloc (size_t __alignment, size_t __size)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;" -> GOTO ARG461;
    TRUE -> STOP;

STATE USEFIRST ARG461 :
    MATCH "extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG462;
    TRUE -> STOP;

STATE USEFIRST ARG462 :
    MATCH "extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG463;
    TRUE -> STOP;

STATE USEFIRST ARG463 :
    MATCH "extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG464;
    TRUE -> STOP;

STATE USEFIRST ARG464 :
    MATCH "extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG465;
    TRUE -> STOP;

STATE USEFIRST ARG465 :
    MATCH "extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG466;
    TRUE -> STOP;

STATE USEFIRST ARG466 :
    MATCH "extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG467;
    TRUE -> STOP;

STATE USEFIRST ARG467 :
    MATCH "extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG468;
    TRUE -> STOP;

STATE USEFIRST ARG468 :
    MATCH "extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG469;
    TRUE -> STOP;

STATE USEFIRST ARG469 :
    MATCH "extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG470;
    TRUE -> STOP;

STATE USEFIRST ARG470 :
    MATCH "extern int setenv (const char *__name, const char *__value, int __replace)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));" -> GOTO ARG471;
    TRUE -> STOP;

STATE USEFIRST ARG471 :
    MATCH "extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG472;
    TRUE -> STOP;

STATE USEFIRST ARG472 :
    MATCH "extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG473;
    TRUE -> STOP;

STATE USEFIRST ARG473 :
    MATCH "extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG474;
    TRUE -> STOP;

STATE USEFIRST ARG474 :
    MATCH "extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG475;
    TRUE -> STOP;

STATE USEFIRST ARG475 :
    MATCH "extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG476;
    TRUE -> STOP;

STATE USEFIRST ARG476 :
    MATCH "extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG477;
    TRUE -> STOP;

STATE USEFIRST ARG477 :
    MATCH "extern int system (const char *__command) ;" -> GOTO ARG478;
    TRUE -> STOP;

STATE USEFIRST ARG478 :
    MATCH "extern char *realpath (const char *__restrict __name,\n         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG479;
    TRUE -> STOP;

STATE USEFIRST ARG479 :
    MATCH "typedef int (*__compar_fn_t) (const void *, const void *);" -> GOTO ARG480;
    TRUE -> STOP;

STATE USEFIRST ARG480 :
    MATCH "extern void *bsearch (const void *__key, const void *__base,\n        size_t __nmemb, size_t __size, __compar_fn_t __compar)\n     __attribute__ ((__nonnull__ (1, 2, 5))) ;" -> GOTO ARG481;
    TRUE -> STOP;

STATE USEFIRST ARG481 :
    MATCH "extern void qsort (void *__base, size_t __nmemb, size_t __size,\n     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));" -> GOTO ARG482;
    TRUE -> STOP;

STATE USEFIRST ARG482 :
    MATCH "extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;" -> GOTO ARG483;
    TRUE -> STOP;

STATE USEFIRST ARG483 :
    MATCH "extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;" -> GOTO ARG484;
    TRUE -> STOP;

STATE USEFIRST ARG484 :
    MATCH "extern long long int llabs (long long int __x)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;" -> GOTO ARG485;
    TRUE -> STOP;

STATE USEFIRST ARG485 :
    MATCH "extern div_t div (int __numer, int __denom)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;" -> GOTO ARG486;
    TRUE -> STOP;

STATE USEFIRST ARG486 :
    MATCH "extern ldiv_t ldiv (long int __numer, long int __denom)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;" -> GOTO ARG487;
    TRUE -> STOP;

STATE USEFIRST ARG487 :
    MATCH "extern lldiv_t lldiv (long long int __numer,\n        long long int __denom)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;" -> GOTO ARG488;
    TRUE -> STOP;

STATE USEFIRST ARG488 :
    MATCH "extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,\n     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;" -> GOTO ARG489;
    TRUE -> STOP;

STATE USEFIRST ARG489 :
    MATCH "extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,\n     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;" -> GOTO ARG490;
    TRUE -> STOP;

STATE USEFIRST ARG490 :
    MATCH "extern char *gcvt (double __value, int __ndigit, char *__buf)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;" -> GOTO ARG491;
    TRUE -> STOP;

STATE USEFIRST ARG491 :
    MATCH "extern char *qecvt (long double __value, int __ndigit,\n      int *__restrict __decpt, int *__restrict __sign)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;" -> GOTO ARG492;
    TRUE -> STOP;

STATE USEFIRST ARG492 :
    MATCH "extern char *qfcvt (long double __value, int __ndigit,\n      int *__restrict __decpt, int *__restrict __sign)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;" -> GOTO ARG493;
    TRUE -> STOP;

STATE USEFIRST ARG493 :
    MATCH "extern char *qgcvt (long double __value, int __ndigit, char *__buf)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;" -> GOTO ARG494;
    TRUE -> STOP;

STATE USEFIRST ARG494 :
    MATCH "extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,\n     int *__restrict __sign, char *__restrict __buf,\n     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));" -> GOTO ARG495;
    TRUE -> STOP;

STATE USEFIRST ARG495 :
    MATCH "extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,\n     int *__restrict __sign, char *__restrict __buf,\n     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));" -> GOTO ARG496;
    TRUE -> STOP;

STATE USEFIRST ARG496 :
    MATCH "extern int qecvt_r (long double __value, int __ndigit,\n      int *__restrict __decpt, int *__restrict __sign,\n      char *__restrict __buf, size_t __len)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));" -> GOTO ARG497;
    TRUE -> STOP;

STATE USEFIRST ARG497 :
    MATCH "extern int qfcvt_r (long double __value, int __ndigit,\n      int *__restrict __decpt, int *__restrict __sign,\n      char *__restrict __buf, size_t __len)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));" -> GOTO ARG499;
    TRUE -> STOP;

STATE USEFIRST ARG499 :
    MATCH "extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG500;
    TRUE -> STOP;

STATE USEFIRST ARG500 :
    MATCH "extern int mbtowc (wchar_t *__restrict __pwc,\n     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG501;
    TRUE -> STOP;

STATE USEFIRST ARG501 :
    MATCH "extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG502;
    TRUE -> STOP;

STATE USEFIRST ARG502 :
    MATCH "extern size_t mbstowcs (wchar_t *__restrict __pwcs,\n   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG503;
    TRUE -> STOP;

STATE USEFIRST ARG503 :
    MATCH "extern size_t wcstombs (char *__restrict __s,\n   const wchar_t *__restrict __pwcs, size_t __n)\n     __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG504;
    TRUE -> STOP;

STATE USEFIRST ARG504 :
    MATCH "extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;" -> GOTO ARG505;
    TRUE -> STOP;

STATE USEFIRST ARG505 :
    MATCH "extern int getsubopt (char **__restrict __optionp,\n        char *const *__restrict __tokens,\n        char **__restrict __valuep)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;" -> GOTO ARG506;
    TRUE -> STOP;

STATE USEFIRST ARG506 :
    MATCH "extern int getloadavg (double __loadavg[], int __nelem)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));" -> GOTO ARG507;
    TRUE -> STOP;

STATE USEFIRST ARG507 :
    MATCH "typedef __builtin_va_list __gnuc_va_list;" -> GOTO ARG508;
    TRUE -> STOP;

STATE USEFIRST ARG508 :
    MATCH "typedef struct\n{\n  int __count;\n  union\n  {\n    unsigned int __wch;\n    char __wchb[4];\n  } __value;\n} __mbstate_t;" -> GOTO ARG509;
    TRUE -> STOP;

STATE USEFIRST ARG509 :
    MATCH "typedef struct\n{\n  int __count;\n  union\n  {\n    unsigned int __wch;\n    char __wchb[4];\n  } __value;\n} __mbstate_t;" -> GOTO ARG510;
    TRUE -> STOP;

STATE USEFIRST ARG510 :
    MATCH "typedef struct\n{\n  int __count;\n  union\n  {\n    unsigned int __wch;\n    char __wchb[4];\n  } __value;\n} __mbstate_t;" -> GOTO ARG511;
    TRUE -> STOP;

STATE USEFIRST ARG511 :
    MATCH "typedef struct _G_fpos_t\n{\n  __off_t __pos;\n  __mbstate_t __state;\n} __fpos_t;" -> GOTO ARG512;
    TRUE -> STOP;

STATE USEFIRST ARG512 :
    MATCH "typedef struct _G_fpos_t\n{\n  __off_t __pos;\n  __mbstate_t __state;\n} __fpos_t;" -> GOTO ARG513;
    TRUE -> STOP;

STATE USEFIRST ARG513 :
    MATCH "typedef struct _G_fpos64_t\n{\n  __off64_t __pos;\n  __mbstate_t __state;\n} __fpos64_t;" -> GOTO ARG514;
    TRUE -> STOP;

STATE USEFIRST ARG514 :
    MATCH "typedef struct _G_fpos64_t\n{\n  __off64_t __pos;\n  __mbstate_t __state;\n} __fpos64_t;" -> GOTO ARG515;
    TRUE -> STOP;

STATE USEFIRST ARG515 :
    MATCH "struct _IO_FILE;" -> GOTO ARG516;
    TRUE -> STOP;

STATE USEFIRST ARG516 :
    MATCH "typedef struct _IO_FILE __FILE;" -> GOTO ARG517;
    TRUE -> STOP;

STATE USEFIRST ARG517 :
    MATCH "typedef struct _IO_FILE FILE;" -> GOTO ARG518;
    TRUE -> STOP;

STATE USEFIRST ARG518 :
    MATCH "struct _IO_marker;" -> GOTO ARG519;
    TRUE -> STOP;

STATE USEFIRST ARG519 :
    MATCH "struct _IO_codecvt;" -> GOTO ARG520;
    TRUE -> STOP;

STATE USEFIRST ARG520 :
    MATCH "struct _IO_wide_data;" -> GOTO ARG521;
    TRUE -> STOP;

STATE USEFIRST ARG521 :
    MATCH "typedef void _IO_lock_t;" -> GOTO ARG522;
    TRUE -> STOP;

STATE USEFIRST ARG522 :
    MATCH "struct _IO_FILE\n{\n  int _flags;\n\n\n  char *_IO_read_ptr;\n  char *_IO_read_end;\n  char *_IO_read_base;\n  char *_IO_write_base;\n  char *_IO_write_ptr;\n  char *_IO_write_end;\n  char *_IO_buf_base;\n  char *_IO_buf_end;\n\n\n  char *_IO_save_base;\n  char *_IO_backup_base;\n  char *_IO_save_end;\n\n  struct _IO_marker *_markers;\n\n  struct _IO_FILE *_chain;\n\n  int _fileno;\n  int _flags2;\n  __off_t _old_offset;\n\n\n  unsigned short _cur_column;\n  signed char _vtable_offset;\n  char _shortbuf[1];\n\n  _IO_lock_t *_lock;\n\n\n\n\n\n\n\n  __off64_t _offset;\n\n  struct _IO_codecvt *_codecvt;\n  struct _IO_wide_data *_wide_data;\n  struct _IO_FILE *_freeres_list;\n  void *_freeres_buf;\n  size_t __pad5;\n  int _mode;\n\n  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];\n};" -> GOTO ARG523;
    TRUE -> STOP;

STATE USEFIRST ARG523 :
    MATCH "typedef __gnuc_va_list va_list;" -> GOTO ARG524;
    TRUE -> STOP;

STATE USEFIRST ARG524 :
    MATCH "typedef __fpos_t fpos_t;" -> GOTO ARG525;
    TRUE -> STOP;

STATE USEFIRST ARG525 :
    MATCH "extern FILE *stdin;" -> GOTO ARG531;
    TRUE -> STOP;

STATE USEFIRST ARG531 :
    MATCH "extern FILE *stdout;" -> GOTO ARG551;
    TRUE -> STOP;

STATE USEFIRST ARG551 :
    MATCH "extern FILE *stderr;" -> GOTO ARG554;
    TRUE -> STOP;

STATE USEFIRST ARG554 :
    MATCH "extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG556;
    TRUE -> STOP;

STATE USEFIRST ARG556 :
    MATCH "extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG559;
    TRUE -> STOP;

STATE USEFIRST ARG559 :
    MATCH "extern int renameat (int __oldfd, const char *__old, int __newfd,\n       const char *__new) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG562;
    TRUE -> STOP;

STATE USEFIRST ARG562 :
    MATCH "extern FILE *tmpfile (void) ;" -> GOTO ARG563;
    TRUE -> STOP;

STATE USEFIRST ARG563 :
    MATCH "extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG564;
    TRUE -> STOP;

STATE USEFIRST ARG564 :
    MATCH "extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG565;
    TRUE -> STOP;

STATE USEFIRST ARG565 :
    MATCH "extern char *tempnam (const char *__dir, const char *__pfx)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;" -> GOTO ARG567;
    TRUE -> STOP;

STATE USEFIRST ARG567 :
    MATCH "extern int fclose (FILE *__stream);" -> GOTO ARG568;
    TRUE -> STOP;

STATE USEFIRST ARG568 :
    MATCH "extern int fflush (FILE *__stream);" -> GOTO ARG569;
    TRUE -> STOP;

STATE USEFIRST ARG569 :
    MATCH "extern int fflush_unlocked (FILE *__stream);" -> GOTO ARG571;
    TRUE -> STOP;

STATE USEFIRST ARG571 :
    MATCH "extern FILE *fopen (const char *__restrict __filename,\n      const char *__restrict __modes) ;" -> GOTO ARG572;
    TRUE -> STOP;

STATE USEFIRST ARG572 :
    MATCH "extern FILE *freopen (const char *__restrict __filename,\n        const char *__restrict __modes,\n        FILE *__restrict __stream) ;" -> GOTO ARG573;
    TRUE -> STOP;

STATE USEFIRST ARG573 :
    MATCH "extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG574;
    TRUE -> STOP;

STATE USEFIRST ARG574 :
    MATCH "extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)\n  __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG575;
    TRUE -> STOP;

STATE USEFIRST ARG575 :
    MATCH "extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG576;
    TRUE -> STOP;

STATE USEFIRST ARG576 :
    MATCH "extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG577;
    TRUE -> STOP;

STATE USEFIRST ARG577 :
    MATCH "extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,\n      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG578;
    TRUE -> STOP;

STATE USEFIRST ARG578 :
    MATCH "extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,\n         size_t __size) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG579;
    TRUE -> STOP;

STATE USEFIRST ARG579 :
    MATCH "extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG580;
    TRUE -> STOP;

STATE USEFIRST ARG580 :
    MATCH "extern int fprintf (FILE *__restrict __stream,\n      const char *__restrict __format, ...);" -> GOTO ARG581;
    TRUE -> STOP;

STATE USEFIRST ARG581 :
    MATCH "extern int printf (const char *__restrict __format, ...);" -> GOTO ARG582;
    TRUE -> STOP;

STATE USEFIRST ARG582 :
    MATCH "extern int sprintf (char *__restrict __s,\n      const char *__restrict __format, ...) __attribute__ ((__nothrow__));" -> GOTO ARG583;
    TRUE -> STOP;

STATE USEFIRST ARG583 :
    MATCH "extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,\n       __gnuc_va_list __arg);" -> GOTO ARG584;
    TRUE -> STOP;

STATE USEFIRST ARG584 :
    MATCH "extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);" -> GOTO ARG585;
    TRUE -> STOP;

STATE USEFIRST ARG585 :
    MATCH "extern int vsprintf (char *__restrict __s, const char *__restrict __format,\n       __gnuc_va_list __arg) __attribute__ ((__nothrow__));" -> GOTO ARG586;
    TRUE -> STOP;

STATE USEFIRST ARG586 :
    MATCH "extern int snprintf (char *__restrict __s, size_t __maxlen,\n       const char *__restrict __format, ...)\n     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));" -> GOTO ARG587;
    TRUE -> STOP;

STATE USEFIRST ARG587 :
    MATCH "extern int vsnprintf (char *__restrict __s, size_t __maxlen,\n        const char *__restrict __format, __gnuc_va_list __arg)\n     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));" -> GOTO ARG588;
    TRUE -> STOP;

STATE USEFIRST ARG588 :
    MATCH "extern int vdprintf (int __fd, const char *__restrict __fmt,\n       __gnuc_va_list __arg)\n     __attribute__ ((__format__ (__printf__, 2, 0)));" -> GOTO ARG589;
    TRUE -> STOP;

STATE USEFIRST ARG589 :
    MATCH "extern int dprintf (int __fd, const char *__restrict __fmt, ...)\n     __attribute__ ((__format__ (__printf__, 2, 3)));" -> GOTO ARG590;
    TRUE -> STOP;

STATE USEFIRST ARG590 :
    MATCH "extern int fscanf (FILE *__restrict __stream,\n     const char *__restrict __format, ...) ;" -> GOTO ARG591;
    TRUE -> STOP;

STATE USEFIRST ARG591 :
    MATCH "extern int scanf (const char *__restrict __format, ...) ;" -> GOTO ARG592;
    TRUE -> STOP;

STATE USEFIRST ARG592 :
    MATCH "extern int sscanf (const char *__restrict __s,\n     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG593;
    TRUE -> STOP;

STATE USEFIRST ARG593 :
    MATCH "extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,\n      __gnuc_va_list __arg)\n     __attribute__ ((__format__ (__scanf__, 2, 0))) ;" -> GOTO ARG595;
    TRUE -> STOP;

STATE USEFIRST ARG595 :
    MATCH "extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)\n     __attribute__ ((__format__ (__scanf__, 1, 0))) ;" -> GOTO ARG597;
    TRUE -> STOP;

STATE USEFIRST ARG597 :
    MATCH "extern int vsscanf (const char *__restrict __s,\n      const char *__restrict __format, __gnuc_va_list __arg)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));" -> GOTO ARG598;
    TRUE -> STOP;

STATE USEFIRST ARG598 :
    MATCH "extern int fgetc (FILE *__stream);" -> GOTO ARG599;
    TRUE -> STOP;

STATE USEFIRST ARG599 :
    MATCH "extern int getc (FILE *__stream);" -> GOTO ARG600;
    TRUE -> STOP;

STATE USEFIRST ARG600 :
    MATCH "extern int getchar (void);" -> GOTO ARG602;
    TRUE -> STOP;

STATE USEFIRST ARG602 :
    MATCH "extern int getc_unlocked (FILE *__stream);" -> GOTO ARG603;
    TRUE -> STOP;

STATE USEFIRST ARG603 :
    MATCH "extern int getchar_unlocked (void);" -> GOTO ARG604;
    TRUE -> STOP;

STATE USEFIRST ARG604 :
    MATCH "extern int fgetc_unlocked (FILE *__stream);" -> GOTO ARG605;
    TRUE -> STOP;

STATE USEFIRST ARG605 :
    MATCH "extern int fputc (int __c, FILE *__stream);" -> GOTO ARG607;
    TRUE -> STOP;

STATE USEFIRST ARG607 :
    MATCH "extern int putc (int __c, FILE *__stream);" -> GOTO ARG608;
    TRUE -> STOP;

STATE USEFIRST ARG608 :
    MATCH "extern int putchar (int __c);" -> GOTO ARG609;
    TRUE -> STOP;

STATE USEFIRST ARG609 :
    MATCH "extern int fputc_unlocked (int __c, FILE *__stream);" -> GOTO ARG610;
    TRUE -> STOP;

STATE USEFIRST ARG610 :
    MATCH "extern int putc_unlocked (int __c, FILE *__stream);" -> GOTO ARG612;
    TRUE -> STOP;

STATE USEFIRST ARG612 :
    MATCH "extern int putchar_unlocked (int __c);" -> GOTO ARG615;
    TRUE -> STOP;

STATE USEFIRST ARG615 :
    MATCH "extern int getw (FILE *__stream);" -> GOTO ARG616;
    TRUE -> STOP;

STATE USEFIRST ARG616 :
    MATCH "extern int putw (int __w, FILE *__stream);" -> GOTO ARG618;
    TRUE -> STOP;

STATE USEFIRST ARG618 :
    MATCH "extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)\n     ;" -> GOTO ARG619;
    TRUE -> STOP;

STATE USEFIRST ARG619 :
    MATCH "extern __ssize_t __getdelim (char **__restrict __lineptr,\n                             size_t *__restrict __n, int __delimiter,\n                             FILE *__restrict __stream) ;" -> GOTO ARG622;
    TRUE -> STOP;

STATE USEFIRST ARG622 :
    MATCH "extern __ssize_t getdelim (char **__restrict __lineptr,\n                           size_t *__restrict __n, int __delimiter,\n                           FILE *__restrict __stream) ;" -> GOTO ARG623;
    TRUE -> STOP;

STATE USEFIRST ARG623 :
    MATCH "extern __ssize_t getline (char **__restrict __lineptr,\n                          size_t *__restrict __n,\n                          FILE *__restrict __stream) ;" -> GOTO ARG624;
    TRUE -> STOP;

STATE USEFIRST ARG624 :
    MATCH "extern int fputs (const char *__restrict __s, FILE *__restrict __stream);" -> GOTO ARG625;
    TRUE -> STOP;

STATE USEFIRST ARG625 :
    MATCH "extern int puts (const char *__s);" -> GOTO ARG627;
    TRUE -> STOP;

STATE USEFIRST ARG627 :
    MATCH "extern int ungetc (int __c, FILE *__stream);" -> GOTO ARG629;
    TRUE -> STOP;

STATE USEFIRST ARG629 :
    MATCH "extern size_t fread (void *__restrict __ptr, size_t __size,\n       size_t __n, FILE *__restrict __stream) ;" -> GOTO ARG630;
    TRUE -> STOP;

STATE USEFIRST ARG630 :
    MATCH "extern size_t fwrite (const void *__restrict __ptr, size_t __size,\n        size_t __n, FILE *__restrict __s);" -> GOTO ARG633;
    TRUE -> STOP;

STATE USEFIRST ARG633 :
    MATCH "extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,\n         size_t __n, FILE *__restrict __stream) ;" -> GOTO ARG634;
    TRUE -> STOP;

STATE USEFIRST ARG634 :
    MATCH "extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,\n          size_t __n, FILE *__restrict __stream);" -> GOTO ARG636;
    TRUE -> STOP;

STATE USEFIRST ARG636 :
    MATCH "extern int fseek (FILE *__stream, long int __off, int __whence);" -> GOTO ARG638;
    TRUE -> STOP;

STATE USEFIRST ARG638 :
    MATCH "extern long int ftell (FILE *__stream) ;" -> GOTO ARG641;
    TRUE -> STOP;

STATE USEFIRST ARG641 :
    MATCH "extern void rewind (FILE *__stream);" -> GOTO ARG642;
    TRUE -> STOP;

STATE USEFIRST ARG642 :
    MATCH "extern int fseeko (FILE *__stream, __off_t __off, int __whence);" -> GOTO ARG643;
    TRUE -> STOP;

STATE USEFIRST ARG643 :
    MATCH "extern __off_t ftello (FILE *__stream) ;" -> GOTO ARG644;
    TRUE -> STOP;

STATE USEFIRST ARG644 :
    MATCH "extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);" -> GOTO ARG651;
    TRUE -> STOP;

STATE USEFIRST ARG651 :
    MATCH "extern int fsetpos (FILE *__stream, const fpos_t *__pos);" -> GOTO ARG658;
    TRUE -> STOP;

STATE USEFIRST ARG658 :
    MATCH "extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG661;
    TRUE -> STOP;

STATE USEFIRST ARG661 :
    MATCH "extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG667;
    TRUE -> STOP;

STATE USEFIRST ARG667 :
    MATCH "extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG669;
    TRUE -> STOP;

STATE USEFIRST ARG669 :
    MATCH "extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG670;
    TRUE -> STOP;

STATE USEFIRST ARG670 :
    MATCH "extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG671;
    TRUE -> STOP;

STATE USEFIRST ARG671 :
    MATCH "extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG672;
    TRUE -> STOP;

STATE USEFIRST ARG672 :
    MATCH "extern void perror (const char *__s);" -> GOTO ARG673;
    TRUE -> STOP;

STATE USEFIRST ARG673 :
    MATCH "extern int sys_nerr;" -> GOTO ARG675;
    TRUE -> STOP;

STATE USEFIRST ARG675 :
    MATCH "extern const char *const sys_errlist[];" -> GOTO ARG677;
    TRUE -> STOP;

STATE USEFIRST ARG677 :
    MATCH "extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG678;
    TRUE -> STOP;

STATE USEFIRST ARG678 :
    MATCH "extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG679;
    TRUE -> STOP;

STATE USEFIRST ARG679 :
    MATCH "extern FILE *popen (const char *__command, const char *__modes) ;" -> GOTO ARG681;
    TRUE -> STOP;

STATE USEFIRST ARG681 :
    MATCH "extern int pclose (FILE *__stream);" -> GOTO ARG682;
    TRUE -> STOP;

STATE USEFIRST ARG682 :
    MATCH "extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG683;
    TRUE -> STOP;

STATE USEFIRST ARG683 :
    MATCH "extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG684;
    TRUE -> STOP;

STATE USEFIRST ARG684 :
    MATCH "extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;" -> GOTO ARG685;
    TRUE -> STOP;

STATE USEFIRST ARG685 :
    MATCH "extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));" -> GOTO ARG686;
    TRUE -> STOP;

STATE USEFIRST ARG686 :
    MATCH "extern int __uflow (FILE *);" -> GOTO ARG687;
    TRUE -> STOP;

STATE USEFIRST ARG687 :
    MATCH "extern int __overflow (FILE *, int);" -> GOTO ARG688;
    TRUE -> STOP;

STATE USEFIRST ARG688 :
    MATCH "extern void __assert_fail (const char *__assertion, const char *__file,\n      unsigned int __line, const char *__function)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG689;
    TRUE -> STOP;

STATE USEFIRST ARG689 :
    MATCH "extern void __assert_perror_fail (int __errnum, const char *__file,\n      unsigned int __line, const char *__function)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG690;
    TRUE -> STOP;

STATE USEFIRST ARG690 :
    MATCH "extern void __assert (const char *__assertion, const char *__file, int __line)\n     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));" -> GOTO ARG691;
    TRUE -> STOP;

STATE USEFIRST ARG691 :
    MATCH "extern unsigned __VERIFIER_nondet_uint();" -> GOTO ARG692;
    TRUE -> STOP;

STATE USEFIRST ARG692 :
    MATCH "extern void __VERIFIER_assume(int);" -> GOTO ARG693;
    TRUE -> STOP;

STATE USEFIRST ARG693 :
    MATCH "int binary_search_function(int arr[], int size, int target)" -> GOTO ARG694;
    TRUE -> STOP;

STATE USEFIRST ARG694 :
    MATCH "int dumb_sort(int arr[], int len, int target)" -> GOTO ARG695;
    TRUE -> STOP;

STATE USEFIRST ARG695 :
    MATCH "int main()" -> GOTO ARG701;
    TRUE -> STOP;

STATE USEFIRST ARG701 :
    MATCH "" -> GOTO ARG712;
    TRUE -> STOP;

STATE USEFIRST ARG712 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG740;
    TRUE -> STOP;

STATE USEFIRST ARG740 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG741;
    TRUE -> STOP;

STATE USEFIRST ARG741 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG742;
    TRUE -> STOP;

STATE USEFIRST ARG742 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG743;
    TRUE -> STOP;

STATE USEFIRST ARG743 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG744;
    TRUE -> STOP;

STATE USEFIRST ARG744 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG745;
    TRUE -> STOP;

STATE USEFIRST ARG745 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG746;
    TRUE -> STOP;

STATE USEFIRST ARG746 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG772;
    TRUE -> STOP;

STATE USEFIRST ARG772 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG778;
    TRUE -> STOP;

STATE USEFIRST ARG778 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG790;
    TRUE -> STOP;

STATE USEFIRST ARG790 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG793;
    TRUE -> STOP;

STATE USEFIRST ARG793 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG804;
    TRUE -> STOP;

STATE USEFIRST ARG804 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG812;
    TRUE -> STOP;

STATE USEFIRST ARG812 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG822;
    TRUE -> STOP;

STATE USEFIRST ARG822 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG826;
    TRUE -> STOP;

STATE USEFIRST ARG826 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG835;
    TRUE -> STOP;

STATE USEFIRST ARG835 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG839;
    TRUE -> STOP;

STATE USEFIRST ARG839 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG844;
    TRUE -> STOP;

STATE USEFIRST ARG844 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG849;
    TRUE -> STOP;

STATE USEFIRST ARG849 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG859;
    TRUE -> STOP;

STATE USEFIRST ARG859 :
    MATCH "int arr[10] = {\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n  __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n    __VERIFIER_nondet_int(),\n  };" -> GOTO ARG916;
    TRUE -> STOP;

STATE USEFIRST ARG916 :
    MATCH "int x = __VERIFIER_nondet_int();" -> GOTO ARG917;
    TRUE -> STOP;

STATE USEFIRST ARG917 :
    MATCH "int x = __VERIFIER_nondet_int();" -> GOTO ARG918;
    TRUE -> STOP;

STATE USEFIRST ARG918 :
    MATCH "" -> GOTO ARG919;
    TRUE -> STOP;

STATE USEFIRST ARG919 :
    MATCH "int i=0;" -> ASSUME {i == (0);} GOTO ARG920;
    TRUE -> STOP;

STATE USEFIRST ARG920 :
    MATCH "[i<10 -1]" -> ASSUME {i == (0);} GOTO ARG921;
    TRUE -> STOP;

STATE USEFIRST ARG921 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG922;
    TRUE -> STOP;

STATE USEFIRST ARG922 :
    MATCH "" -> GOTO ARG924;
    TRUE -> STOP;

STATE USEFIRST ARG924 :
    MATCH "++i" -> ASSUME {i == (1);} GOTO ARG2432;
    TRUE -> STOP;

STATE USEFIRST ARG2432 :
    MATCH "[i<10 -1]" -> ASSUME {i == (1);} GOTO ARG2433;
    TRUE -> STOP;

STATE USEFIRST ARG2433 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG2434;
    TRUE -> STOP;

STATE USEFIRST ARG2434 :
    MATCH "" -> GOTO ARG2436;
    TRUE -> STOP;

STATE USEFIRST ARG2436 :
    MATCH "++i" -> ASSUME {i == (2);} GOTO ARG3340;
    TRUE -> STOP;

STATE USEFIRST ARG3340 :
    MATCH "[i<10 -1]" -> ASSUME {i == (2);} GOTO ARG3341;
    TRUE -> STOP;

STATE USEFIRST ARG3341 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG3342;
    TRUE -> STOP;

STATE USEFIRST ARG3342 :
    MATCH "" -> GOTO ARG3344;
    TRUE -> STOP;

STATE USEFIRST ARG3344 :
    MATCH "++i" -> ASSUME {i == (3);} GOTO ARG5094;
    TRUE -> STOP;

STATE USEFIRST ARG5094 :
    MATCH "[i<10 -1]" -> ASSUME {i == (3);} GOTO ARG5095;
    TRUE -> STOP;

STATE USEFIRST ARG5095 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG5096;
    TRUE -> STOP;

STATE USEFIRST ARG5096 :
    MATCH "" -> GOTO ARG5098;
    TRUE -> STOP;

STATE USEFIRST ARG5098 :
    MATCH "++i" -> ASSUME {i == (4);} GOTO ARG8093;
    TRUE -> STOP;

STATE USEFIRST ARG8093 :
    MATCH "[i<10 -1]" -> ASSUME {i == (4);} GOTO ARG8094;
    TRUE -> STOP;

STATE USEFIRST ARG8094 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG8095;
    TRUE -> STOP;

STATE USEFIRST ARG8095 :
    MATCH "" -> GOTO ARG8097;
    TRUE -> STOP;

STATE USEFIRST ARG8097 :
    MATCH "++i" -> ASSUME {i == (5);} GOTO ARG12847;
    TRUE -> STOP;

STATE USEFIRST ARG12847 :
    MATCH "[i<10 -1]" -> ASSUME {i == (5);} GOTO ARG12848;
    TRUE -> STOP;

STATE USEFIRST ARG12848 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG12849;
    TRUE -> STOP;

STATE USEFIRST ARG12849 :
    MATCH "" -> GOTO ARG12851;
    TRUE -> STOP;

STATE USEFIRST ARG12851 :
    MATCH "++i" -> ASSUME {i == (6);} GOTO ARG19938;
    TRUE -> STOP;

STATE USEFIRST ARG19938 :
    MATCH "[i<10 -1]" -> ASSUME {i == (6);} GOTO ARG19939;
    TRUE -> STOP;

STATE USEFIRST ARG19939 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG19940;
    TRUE -> STOP;

STATE USEFIRST ARG19940 :
    MATCH "" -> GOTO ARG19942;
    TRUE -> STOP;

STATE USEFIRST ARG19942 :
    MATCH "++i" -> ASSUME {i == (7);} GOTO ARG30032;
    TRUE -> STOP;

STATE USEFIRST ARG30032 :
    MATCH "[i<10 -1]" -> ASSUME {i == (7);} GOTO ARG30033;
    TRUE -> STOP;

STATE USEFIRST ARG30033 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG30034;
    TRUE -> STOP;

STATE USEFIRST ARG30034 :
    MATCH "" -> GOTO ARG30036;
    TRUE -> STOP;

STATE USEFIRST ARG30036 :
    MATCH "++i" -> ASSUME {i == (8);} GOTO ARG43879;
    TRUE -> STOP;

STATE USEFIRST ARG43879 :
    MATCH "[i<10 -1]" -> ASSUME {i == (8);} GOTO ARG43880;
    TRUE -> STOP;

STATE USEFIRST ARG43880 :
    MATCH "[__VERIFIER_assume(arr[i] < arr[i+1]);]" -> GOTO ARG43881;
    TRUE -> STOP;

STATE USEFIRST ARG43881 :
    MATCH "" -> GOTO ARG43883;
    TRUE -> STOP;

STATE USEFIRST ARG43883 :
    MATCH "++i" -> ASSUME {i == (9);} GOTO ARG62313;
    TRUE -> STOP;

STATE USEFIRST ARG62313 :
    MATCH "[!(i<10 -1)]" -> ASSUME {i == (9);} GOTO ARG62314;
    TRUE -> STOP;

STATE USEFIRST ARG62314 :
    MATCH "int result = binary_search_function(arr, 10, x);" -> GOTO ARG62315;
    TRUE -> STOP;

STATE USEFIRST ARG62315 :
    MATCH "int result = binary_search_function(arr, 10, x);" -> GOTO ARG62316;
    TRUE -> STOP;

STATE USEFIRST ARG62316 :
    MATCH "" -> ASSUME {size == (10);} GOTO ARG62317;
    TRUE -> STOP;

STATE USEFIRST ARG62317 :
    MATCH "int low = 0;" -> ASSUME {low == (0);size == (10);} GOTO ARG62318;
    TRUE -> STOP;

STATE USEFIRST ARG62318 :
    MATCH "int high = size - 1;" -> ASSUME {high == (9);} GOTO ARG62319;
    TRUE -> STOP;

STATE USEFIRST ARG62319 :
    MATCH "int mid;" -> GOTO ARG62320;
    TRUE -> STOP;

STATE USEFIRST ARG62320 :
    MATCH "" -> GOTO ARG62321;
    TRUE -> STOP;

STATE USEFIRST ARG62321 :
    MATCH "[low < high]" -> ASSUME {low == (0);high == (9);} GOTO ARG62322;
    TRUE -> STOP;

STATE USEFIRST ARG62322 :
    MATCH "mid = (low + high)/2;" -> ASSUME {mid == (4);} GOTO ARG62323;
    TRUE -> STOP;

STATE USEFIRST ARG62323 :
    MATCH "[arr[mid] == target]" -> GOTO ARG62324;
    TRUE -> STOP;

STATE USEFIRST ARG62324 :
    MATCH "return mid;" -> GOTO ARG62491;
    TRUE -> STOP;

STATE USEFIRST ARG62491 :
    MATCH "" -> GOTO ARG62510;
    TRUE -> STOP;

STATE USEFIRST ARG62510 :
    MATCH "printf(\"Result of binary search is = %d\\n\", result);" -> GOTO ARG62520;
    TRUE -> STOP;

STATE USEFIRST ARG62520 :
    MATCH "result != dumb_sort(arr, 10, x)" -> GOTO ARG62530;
    TRUE -> STOP;

STATE USEFIRST ARG62530 :
    MATCH "result != dumb_sort(arr, 10, x)" -> GOTO ARG62540;
    TRUE -> STOP;

STATE USEFIRST ARG62540 :
    MATCH "" -> ASSUME {len == (10);} GOTO ARG62541;
    TRUE -> STOP;

STATE USEFIRST ARG62541 :
    MATCH "" -> ASSUME {len == (10);} GOTO ARG62542;
    TRUE -> STOP;

STATE USEFIRST ARG62542 :
    MATCH "int i=0;" -> ASSUME {i == (0);len == (10);} GOTO ARG62543;
    TRUE -> STOP;

STATE USEFIRST ARG62543 :
    MATCH "[i<len]" -> ASSUME {i == (0);len == (10);} GOTO ARG62544;
    TRUE -> STOP;

STATE USEFIRST ARG62544 :
    MATCH "[!(target == arr[i])]" -> GOTO ARG62546;
    TRUE -> STOP;

STATE USEFIRST ARG62546 :
    MATCH "" -> GOTO ARG62547;
    TRUE -> STOP;

STATE USEFIRST ARG62547 :
    MATCH "++i" -> ASSUME {i == (1);} GOTO ARG62548;
    TRUE -> STOP;

STATE USEFIRST ARG62548 :
    MATCH "[i<len]" -> ASSUME {i == (1);len == (10);} GOTO ARG62549;
    TRUE -> STOP;

STATE USEFIRST ARG62549 :
    MATCH "[!(target == arr[i])]" -> GOTO ARG62551;
    TRUE -> STOP;

STATE USEFIRST ARG62551 :
    MATCH "" -> GOTO ARG62552;
    TRUE -> STOP;

STATE USEFIRST ARG62552 :
    MATCH "++i" -> ASSUME {i == (2);} GOTO ARG62553;
    TRUE -> STOP;

STATE USEFIRST ARG62553 :
    MATCH "[i<len]" -> ASSUME {i == (2);len == (10);} GOTO ARG62554;
    TRUE -> STOP;

STATE USEFIRST ARG62554 :
    MATCH "[!(target == arr[i])]" -> GOTO ARG62556;
    TRUE -> STOP;

STATE USEFIRST ARG62556 :
    MATCH "" -> GOTO ARG62557;
    TRUE -> STOP;

STATE USEFIRST ARG62557 :
    MATCH "++i" -> ASSUME {i == (3);} GOTO ARG62558;
    TRUE -> STOP;

STATE USEFIRST ARG62558 :
    MATCH "[i<len]" -> ASSUME {i == (3);len == (10);} GOTO ARG62559;
    TRUE -> STOP;

STATE USEFIRST ARG62559 :
    MATCH "[target == arr[i]]" -> GOTO ARG62560;
    TRUE -> STOP;

STATE USEFIRST ARG62560 :
    MATCH "return i;" -> GOTO ARG62598;
    TRUE -> STOP;

STATE USEFIRST ARG62598 :
    MATCH "" -> GOTO ARG62608;
    TRUE -> STOP;

STATE USEFIRST ARG62608 :
    MATCH "[result != dumb_sort(arr, 10, x)]" -> ASSUME {result == (4);__CPAchecker_TMP_10 == (3);} GOTO ARG63293;
    TRUE -> STOP;

STATE USEFIRST ARG63293 :
    MATCH "(void) sizeof ((\n# 73 \"code.c\"\n 0\n# 73 \"code.c\" 3 4\n ) ? 1 : 0)" -> GOTO ARG63483;
    TRUE -> STOP;

STATE USEFIRST ARG63483 :
    MATCH "0" -> GOTO ARG63582;
    TRUE -> STOP;

STATE USEFIRST ARG63582 :
    MATCH "__assert_fail (\n# 73 \"code.c\"\n \"0\"\n# 73 \"code.c\" 3 4\n , \"code.c\", 73, __extension__ __PRETTY_FUNCTION__);" -> ERROR;
    TRUE -> STOP;

STATE USEFIRST ARG63685 :
    TRUE -> STOP;

END AUTOMATON
