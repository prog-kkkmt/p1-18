#include <stdio.h>

/**
Напишите функцию, которая возводит число в степень.
напимер:
вход => A B
выход => А^B  
*/

int power(int a, int b){
    int i, prois = 1;
    for (i = 0; i < b; i++)
    {
        prois *= a;
    }
    return prois;
}

int main(){
    int a, b;
    scanf("%d %d", &a, &b);
    printf("%d", power(a, b));
    return 0;
}
