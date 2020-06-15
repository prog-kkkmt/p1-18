#include <stdio.h>
#include <stdlib.h>

typedef int* intPtr;

int main(){
    int a;
    intPtr pa;
    pa = &a;
    scanf("%d", pa);
    printf("a=%d\n", a);
}
