#include <stdio.h>
#include <stdlib.h>

/**
� ������ ��������� ����� n ��� ���� ����� �������� ������ ��� n ���������
����� ��������� ����� � �����, � ����� �� ����������� �� ������ ������� �� �������.
*/

int main ()
{
    int n, i;
    scanf("%d", &n);
    int *arr = (int*)malloc(sizeof(int) * n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    free(arr);
    return 0;
}
