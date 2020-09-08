#include <stdio.h>
#define LEN 1000

/**
напишите программу, которая инвертирует массив или строку
*/

int main(){
    char str[LEN];
    char str2[LEN];
    gets(str);
    int len, j = 0, i = 0;
    for(len = 0; str[len] != '\0'; ++len);
    for(j = len - 1; j >= 0 ; --j){
        str2[j] = str[i];
        ++i;
    }
    printf("%s", str2);
    return 0;
}
