#include <stdio.h>

/**
Заполнить значениями, введенными с клавиатуры, одномерный массив целых чисел длиной 15
и вывести эти значения в обратном порядке на консоль.
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
