#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#define LEN 10

extern unsigned __VERIFIER_nondet_uint();
extern void __VERIFIER_assume(int);

/* EXPLANATION
 * The bug in this code is on line 20,the while loop
 * The line needs to be (low <= high), so that the middle value isn't 
 * skipped when low and high converge
 */

// Preconditions: 
// arr is a sorted array
// size is the size of the array arr 
int binary_search_function(int arr[], int size, int target) {
    int low = 0;
    int high = size - 1;
    int mid;
    while (low < high) {
        mid = (low + high)/2;
        if (arr[mid] == target) {
            return mid;
        }
        if (arr[mid] < target) {
            low = mid + 1;
        }
        if (arr[mid] > target) {
            high = mid - 1;
        }
    }
    return -1;
}

int dumb_sort(int arr[], int len, int target) {
	for (int i=0; i<len; ++i) {
		if (target == arr[i]) {
			return i;
		}
	}

	return -1;
}

int main() {
  int arr[LEN] = { 
		__VERIFIER_nondet_int(), 
		__VERIFIER_nondet_int(),
		__VERIFIER_nondet_int(),
		__VERIFIER_nondet_int(),
    __VERIFIER_nondet_int(),
    __VERIFIER_nondet_int(),
    __VERIFIER_nondet_int(),
    __VERIFIER_nondet_int(),
    __VERIFIER_nondet_int(),
    __VERIFIER_nondet_int(),
  };

  int x = __VERIFIER_nondet_int();

	for (int i=0; i<LEN-1; ++i) {
		__VERIFIER_assume(arr[i] < arr[i+1]);
	}

  int result = binary_search_function(arr, LEN, x);
  printf("Result of binary search is = %d\n", result);

  // is the result correct? How can you check?
	if (result != dumb_sort(arr, LEN, x)) {
		assert(0);
	}

  return 1;
}