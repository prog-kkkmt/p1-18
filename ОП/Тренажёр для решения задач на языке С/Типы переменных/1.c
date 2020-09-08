#include <stdio.h>

int main() {
  int a;
  scanf("%d", &a);
  if (a > -15 && 12 >= a)
      printf("True");
  else if (a > 14 && a < 17)
      printf("True");
  else if (a >= 19)
      printf("True");
  else
      printf("False");
  return 0;
}
