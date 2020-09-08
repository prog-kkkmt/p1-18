#include <stdio.h>
#include <string.h>
#define LEN 100

/**
Найти разницу между числом строчных и прописных (заглавных) букв в строке(длина не более 100 символов),
подаваемой на вход. Библиотеки <stdio.h>, <string.h> подключать не нужно.
(На экран выводить ничего не надо)
*/

int diff_lower_upper(char * str) {
	int i, count_up = 0, count_low = 0;
    for(i = 0; str[i] != '\0'; ++i){
        if(isupper(str[i])){
            ++count_up;
        }
        if(islower(str[i])){
            ++count_low;
        }
    }
    return count_low - count_up;
}

int main()
{
    char string[LEN];
    gets(string);
    printf("%d", diff_lower_upper(&string));
    return 0;
}
