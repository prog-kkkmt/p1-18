#include <stdio.h>

/**
Напишите программу-калькулятор для четырёх основных арифметических действий. Символ действия c и два целых числа a, b(если b=0, вывести строку "На ноль делить нельзя!").
Примечание: ответ выводить с точностью до двух знаков после запятой.
*/

int main() {
  char c;
  double a, b;
  scanf("%c %lf %lf", &c, &a, &b);
  switch(c){
      case '+':
          printf("%.2lf", a + b);
          break;
      case '-':
          printf("%.2lf", a - b);
          break;
      case '*':
          printf("%.2lf", a * b);
          break;
      case '/':
          if (b == 0){
              printf("На ноль делить нельзя!");
          }
          else
              printf("%.2lf", a / b); break;
          break;

        default: printf("ERROR!");
  }
  return 0;
}
