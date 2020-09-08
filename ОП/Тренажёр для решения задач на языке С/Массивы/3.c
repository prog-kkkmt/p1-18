#include <stdio.h>

int main(){
    int n;
    scanf("%d",&n);
    int a[n],m[n];
    int j = 0;
    for (int i = 0; i<n; i++){
        scanf("%d",&a[i]);
        if (a[i] % 2 == 0){
            m[j] = a[i] / 2;
            j++;
        }
    }
    for (int i = 0; i < j; i++){
        printf("%d ",m[i]);
    }
    return 0;
}
