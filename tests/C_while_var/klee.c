// This file is part of CPAchecker,
// a tool for configurable software verification:
// https://cpachecker.sosy-lab.org
//
// SPDX-FileCopyrightText: 2024 Dirk Beyer <https://www.sosy-lab.org>
//
// SPDX-License-Identifier: Apache-2.0

#include <stdlib.h>
#include <stdio.h>
#include <klee/klee.h>

int main() {
  unsigned int n;
	klee_make_symbolic(&n, sizeof(unsigned int), "n");
  unsigned int x;
	klee_make_symbolic(&x, sizeof(unsigned int), "x");

  unsigned int y = n - x;
  while (x > y) {
    x--;
    y++;
    if (x < y) {
      // __assert_fail("0", "example-unsafe.c", 20, "main");
			klee_assert(0);
    }
  }
  return 0;
}
