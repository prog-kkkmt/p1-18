#include <stdio.h>

/**
�� ���� �������� ��� ����� �����
���� ������ ������ �������, ������� �� �����
���� ��� �����, ������� 0
���� ������ ������ �������, ������� �� ������������.
*/

int main(){
    int a, b;
    scanf("%d %d", &a, &b);
    if (a > b){
        printf("%d", a + b);
    }
    else if (a == b){
        printf("%d", 0);
    }
    else if (a < b){
        printf("%d", a * b);
    }
    return 0;
}
