#include <stdio.h>

int main(){
    int a, b;
    scanf("%d%d", &a, &b);
    if ( a > b )
        printf("%d", a + b);
    else if ( a == b )
        printf("0");
    else if ( b > a )
        printf("%d", a * b );
    return 0;
}
