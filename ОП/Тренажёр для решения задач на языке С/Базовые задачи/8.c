#include <stdio.h>

int main()
{
    int numb, x, flag;
    scanf("%d", &numb);
    scanf("%d", &x);
    flag = x;
    for ( int i = 1; i < numb; i++ ) {
        scanf("%d", &x);
        if ( x >= flag ){
            flag = x;
            continue;
        }else{
            printf("False");
            return 0;
        }
    }
    if (x >= flag)
        printf("True");
    else
        printf("False");
    return 0;
}
