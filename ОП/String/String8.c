/**String8. Дано целое число N (> 0) и символ C.
Вывести строку длины N, которая состоит из символов C. **/
#include <stdio.h>
#define MAX 100

int main(){
    int n;
    char str[MAX], c;
    scanf("%d %c", &n, &c);
    for (int i = 0; i < n; i++){
        str[i] = c;
        printf("%c", str[i]);
        }
return 0;
}

