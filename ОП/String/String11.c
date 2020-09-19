/**String11. Дана непустая строка S.
Вывести строку, содержащую символы строки S,
между которыми вставлено по одному пробелу.**/
#include <stdio.h>
#include <string.h>
#define MAX 100

int main(){
    char s[MAX], str[MAX];
    gets(s);
    int length = strlen(s);
    for (int i = 0; i < length; ++i)
        str[i] = s[i];
    for (int i = 0; i < length; ++i)
        printf("%c ", str[i]);
return 0;
}
