#include <stdio.h>

void insertSort(int v[], int n){
    int i, j, k, selected;
    for (i = 1; i < n; i++){
        selected = v[i];
        j = i - 1;
        
        while (j >= 0 && v[j] > selected){
            v[j+1] = v[j];
            j--;
        }
        v[j + 1] = selected;
    }
}
