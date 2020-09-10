#include <stdio.h>
#include <string.h>
#define LEN 100

int is_palindrome(char *str){
    int i, length;
    length = strlen(str);
    for (i = 0; str[i] != '\0'; i++)
    {
        if (str[length - i - 1] != str[i])
            return 0;
    }
    return 1;
}

int main()
{
    char string[LEN];
    gets(string);
    printf("%d", is_palindrome(&string));
    return 0;
}
