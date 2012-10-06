#include <stdio.h>

int main(void) {
  int currentTerm = 1;
  int previousTerm = 1;
  int sum = 0;

  while (currentTerm < 4000000) {
    if (currentTerm % 2 == 0) {
      sum  += currentTerm;
    }

    int temp = currentTerm;
    currentTerm += previousTerm;
    previousTerm = temp;
  }

  printf("Sum: %d\n", sum);
}
