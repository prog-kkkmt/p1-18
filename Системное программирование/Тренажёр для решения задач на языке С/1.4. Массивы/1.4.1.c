#include <stdio.h>

/**
��������� ����������, ���������� � ����������, ���������� ������ ����� ����� ������ 15
� ������� ��� �������� � �������� ������� �� �������.
*/

int main(){
    int n = 15, i, elem;
    int array[n];
    for (i = 0; i < n; ++i){
        scanf("%d", &elem);
        array[i] = elem;
    }
    for (int j = n - 1; j >= 0; --j){
        printf("%d ", array[j]);
    }
    return 0;
}
