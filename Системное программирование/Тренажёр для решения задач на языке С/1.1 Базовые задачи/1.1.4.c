#include <stdio.h>

/**
����� � ������� ������ ������������� ����� �� 3 ��������� ����� �����. ���� ������������� ����� ��� - ������� "������������� ����� ���!".
*/

int main(){
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    if (a < 0){
        printf("%d", a);
    }
    else if (b < 0){
        printf("%d", b);
    }
    else if (c < 0){
        printf("%d", c);
    }
    else
        printf("������������� ����� ���!");
    return 0;
}
