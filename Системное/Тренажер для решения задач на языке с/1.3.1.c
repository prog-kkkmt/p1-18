/** �������� ������� �.�.
�������� ���������, ������� ������� ������� ����� ������, ��������� ����.
char, char*, char**
int, int*, int**
float, float*, float**
double, double*, double**

�������, ������� � �������� ����� ���������. � ������ �������� ��� �������� ���� �������������, ������� ����� ��������������� ���������� ����������.
*/

#include <stdio.h>

int main(){
    printf("%d, %d, %d\n", sizeof(char), sizeof(char*), sizeof(char**));
    printf("%d, %d, %d\n", sizeof(int), sizeof(int*), sizeof(int**));
    printf("%d, %d, %d\n", sizeof(float), sizeof(float*), sizeof(float**));
    printf("%d, %d, %d\n", sizeof(double), sizeof(double*), sizeof(double**));
    return 0;
}