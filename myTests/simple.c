#include <assert.h>

// Symbiotic (and SV-COMP) convention for non-deterministic inputs
extern int __VERIFIER_nondet_int(void);

int main() {
    int x = __VERIFIER_nondet_int();

    if (x > 5) {
        // On the path where x ≥ 10, this assertion will fail
        assert(x < 10);
    }

    return 0;
}
