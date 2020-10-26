#include <stdio.h>
#define MAX 7
int main(){
    int a = 0;
    int arr[] = {-4, 1, 7, 154, 90, -2, -2};
        for(int i = 0; i != MAX; i++)
            for(int j = i+1; j != MAX; j++)
                if(arr[i] > arr[j]){
                    a = arr[i];
                    arr[i] = arr[j];
                    arr[j] = a;
                }

    for(int i = 0; i != MAX; i++)
        printf("%d ", arr[i]);

    return 0;
}
