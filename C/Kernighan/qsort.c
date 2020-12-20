#include <stdio.h>

void swap(int v[], int i, int j){
    int tmp = v[i];
    v[i] = v[j];
    v[j] = tmp;
}

void quicksort(int v[], int n){
    if (n <= 0)
        return;
    
    swap(v, 0, rand() % n);
    
    int last = 0;
    int i;
    for (i = 0; i < n; i++)
        if (v[i] < v[0])
            swap(v, i, ++last);
    swap(v,0, last);
    quicksort(v, last);
    quicksort(v+last+1, n-last-1);
}

int main() {
    int v[] = {2,54,65,12,43,65,12,67,1,654,21,654};
    int n = sizeof(v)/sizeof(v[0]);
    quicksort(v, n);
    for (int i = 0; i < n; i++)
        printf("%d ", v[i]);
    return 0;
}
