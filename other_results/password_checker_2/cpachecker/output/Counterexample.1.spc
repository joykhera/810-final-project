CONTROL AUTOMATON ErrorPath1

INITIAL STATE ARG0;

STATE USEFIRST ARG0 :
    MATCH "" -> GOTO ARG1;
    TRUE -> STOP;

STATE USEFIRST ARG1 :
    MATCH "extern int __VERIFIER_nondet_int();" -> GOTO ARG2;
    TRUE -> STOP;

STATE USEFIRST ARG2 :
    MATCH "extern void __assert_fail();" -> GOTO ARG3;
    TRUE -> STOP;

STATE USEFIRST ARG3 :
    MATCH "int main(int argc, char *argv[])" -> GOTO ARG4;
    TRUE -> STOP;

STATE USEFIRST ARG4 :
    MATCH "" -> GOTO ARG5;
    TRUE -> STOP;

STATE USEFIRST ARG5 :
    MATCH "int password = __VERIFIER_nondet_int();" -> GOTO ARG6;
    TRUE -> STOP;

STATE USEFIRST ARG6 :
    MATCH "int password = __VERIFIER_nondet_int();" -> ASSUME {password == (10000);} GOTO ARG7;
    TRUE -> STOP;

STATE USEFIRST ARG7 :
    MATCH "printf(\"Please enter your password here: \");" -> GOTO ARG8;
    TRUE -> STOP;

STATE USEFIRST ARG8 :
    MATCH "scanf(\"%d\", &password);" -> GOTO ARG9;
    TRUE -> STOP;

STATE USEFIRST ARG9 :
    MATCH "[!(password == 543210)]" -> ASSUME {password == (10000);} GOTO ARG11;
    TRUE -> STOP;

STATE USEFIRST ARG11 :
    MATCH "[password == 10000]" -> ASSUME {password == (10000);} GOTO ARG12;
    TRUE -> STOP;

STATE USEFIRST ARG12 :
    MATCH "printf(\"Welcome 2\\n\");" -> GOTO ARG16;
    TRUE -> STOP;

STATE USEFIRST ARG16 :
    MATCH "__assert_fail();" -> ERROR;
    TRUE -> STOP;

STATE USEFIRST ARG18 :
    TRUE -> STOP;

END AUTOMATON
