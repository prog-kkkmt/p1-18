#include <stdio.h>
#define LEN 1000

/**Дана строка S и текстовый файл. Добавить строку S в конец файла.*/

int main(){
    char s[LEN] = "werhewruih";
    char str[LEN];
    FILE *file;
    file = fopen("newfile.txt", "a");
    fprintf(file, s);
    return 0;
}

