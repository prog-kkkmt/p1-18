#include <stdio.h>

int main(){
    int a[15];
    int j = 14;
    for (int i = 0; i<15; i++){
        scanf("%d",&a[i]);
    }
    while(j >= 0){
        printf("%d ",a[j]);
        j--;
    }
    return 0;
}
