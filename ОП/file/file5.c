/**Text5. Дана строка S и текстовый файл.
          Добавить строку S в конец файла.*/

#include <stdio.h>
#define MAX 20

int main(){
    char *fname = "file5.txt";
    FILE *f = fopen(fname, "a");

    char str[MAX];
    scanf("%s", &str);
    fprintf(f, "%s", str);

    fclose(f);

    return 0;
}
