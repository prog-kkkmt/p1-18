#include <stdio.h>

int main(){
    int x;
    int found = 0;
    for ( int i = 0; i < 3; i++ ) {
     scanf("%d", &x);
        if ( x < 0 ) {
            found = 1;
            break;
            }
    }
    if (found)
        printf("%d", x);
    else
        printf("Отрицательных чисел нет!");
    return 0;
}
