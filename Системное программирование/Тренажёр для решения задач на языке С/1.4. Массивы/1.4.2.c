#include <stdio.h>

/**
����� � ������� ������������ ����� �� 15 ����� ����� (����� �������� � �������).
*/

int main(){
    int n = 15, i, elem, maxs = -9999;
    int array[n];
    for (i = 0; i <= n; ++i){
        scanf("%d", &elem);
        array[i] = elem;
    }
    for (i = 0; i < n; ++i){
        if (maxs < array[i]){
            maxs = array[i];
        }
    }
    printf("%d", maxs);
    return 0;
}
