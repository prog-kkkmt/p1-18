/**String10°. Дана строка. Вывести строку,
содержащую те же символы, но расположенные в обратном порядке.**/
#include <stdio.h>
#include <string.h>
#define MAX 100

int main(){
    char str[MAX];
    gets(str);
    for (int i = strlen(str)-1; i >= 0; i--)
        printf("%c", str[i]);
return 0;
}
