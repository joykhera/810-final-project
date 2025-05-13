CONTROL AUTOMATON ErrorPath3

INITIAL STATE ARG2;

STATE USEFIRST ARG2 :
    MATCH "" -> GOTO ARG6;
    TRUE -> STOP;

STATE USEFIRST ARG6 :
    MATCH "extern unsigned __VERIFIER_nondet_uint();" -> GOTO ARG20_1_1;
STATE USEFIRST ARG20_0_1 :
    MATCH "extern unsigned __VERIFIER_nondet_uint();" -> GOTO ARG20_1_1;
STATE USEFIRST ARG20_1_1 :
    MATCH "extern void __assert_fail(const char *assertion, const char *file,\n                          unsigned int line, const char *function);" -> GOTO ARG20_2_1;
STATE USEFIRST ARG20_2_1 :
    MATCH "int main()" -> GOTO ARG20_3_1;
STATE USEFIRST ARG20_3_1 :
    MATCH "" -> GOTO ARG20_4_1;
STATE USEFIRST ARG20_4_1 :
    MATCH "unsigned n = __VERIFIER_nondet_uint();" -> GOTO ARG20_5_1;
STATE USEFIRST ARG20_5_1 :
    MATCH "unsigned n = __VERIFIER_nondet_uint();" -> GOTO ARG20_6_1;
STATE USEFIRST ARG20_6_1 :
    MATCH "unsigned x = __VERIFIER_nondet_uint();" -> GOTO ARG20_7_1;
STATE USEFIRST ARG20_7_1 :
    MATCH "unsigned x = __VERIFIER_nondet_uint();" -> GOTO ARG20_8_1;
STATE USEFIRST ARG20_8_1 :
    MATCH "unsigned y = n - x;" -> ASSUME {n == (4294967295U);x == (2147483648U);y == (2147483647U);} GOTO ARG20;
    TRUE -> STOP;

STATE USEFIRST ARG20 :
    MATCH "" -> GOTO ARG22;
    TRUE -> STOP;

STATE USEFIRST ARG22 :
    MATCH "[x > y]" -> ASSUME {x == (2147483648U);y == (2147483647U);} GOTO ARG23;
    TRUE -> STOP;

STATE USEFIRST ARG23 :
    MATCH "x--;" -> GOTO ARG31_1_2;
STATE USEFIRST ARG31_0_2 :
    MATCH "x--;" -> GOTO ARG31_1_2;
STATE USEFIRST ARG31_1_2 :
    MATCH "x--;" -> GOTO ARG31_2_2;
STATE USEFIRST ARG31_2_2 :
    MATCH "x--;" -> GOTO ARG31_3_2;
STATE USEFIRST ARG31_3_2 :
    MATCH "y++;" -> GOTO ARG31_4_2;
STATE USEFIRST ARG31_4_2 :
    MATCH "y++;" -> GOTO ARG31_5_2;
STATE USEFIRST ARG31_5_2 :
    MATCH "y++;" -> ASSUME {x == (2147483647U);y == (2147483648U);} GOTO ARG31;
    TRUE -> STOP;

STATE USEFIRST ARG31 :
    MATCH "[x < y]" -> ASSUME {x == (2147483647U);y == (2147483648U);} GOTO ARG32;
    TRUE -> STOP;

STATE USEFIRST ARG32 :
    MATCH "__assert_fail(\"0\", \"example-unsafe.c\", 20, \"main\");" -> ERROR;
    TRUE -> STOP;

STATE USEFIRST ARG54 :
    TRUE -> STOP;

END AUTOMATON
