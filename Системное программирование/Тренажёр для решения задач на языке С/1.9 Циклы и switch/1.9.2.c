#include <stdio.h>

/**
�������� ���������-����������� ��� ������ �������� �������������� ��������. ������ �������� c � ��� ����� ����� a, b(���� b=0, ������� ������ "�� ���� ������ ������!").
����������: ����� �������� � ��������� �� ���� ������ ����� �������.
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
              printf("�� ���� ������ ������!");
          }
          else
              printf("%.2lf", a / b); break;
          break;

        default: printf("ERROR!");
  }
  return 0;
}
