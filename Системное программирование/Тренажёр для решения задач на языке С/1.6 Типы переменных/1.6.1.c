#include <stdio.h>

/**
Напишите программу, принимающую на вход целое число, которая выводит True,
если переданное значение попадает в интервал
(−15,12]∪(14,17)∪[19,+∞) и False в противном случае.
*/

int main() {
  int n;
  scanf("%d", &n);
  if (-15 < n && n <= 12 || n > 14 && n < 17 || n >= 19){
      printf("True");
  }
  else
      printf("False");
  return 0;
}
