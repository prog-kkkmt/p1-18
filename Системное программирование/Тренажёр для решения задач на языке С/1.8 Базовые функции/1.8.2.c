#include <stdio.h>
#include <math.h>

/**
�������� �������, ������� ��������� ����� ������ ������������ � ������� ������� ������������.

Note:

��� ����� ������ ���� �������� �� ���� ������ ����� �������
���� ������� �� ����� ���������� �����������, ������� "Invalid Triangle"
*/

float ploshad_treo(int a, int b, int c){
    float p, s;
    p = (a + b + c) / 2.0;
    s = sqrt(p * (p - a) * (p - b) * (p - c));
    return s;
}

int main(){
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    if (a + b > c && a + c > b && b + c > a){
        printf("%.2f", ploshad_treo(a, b, c));
    }
    else
        printf("Invalid Triangle");
    return 0;
}
