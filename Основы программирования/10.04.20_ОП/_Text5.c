#include <stdio.h>
#define LEN 1000

/**Дана строка S и текстовый файл. Добавить строку S в конец файла.*/

int main()
{
    char str[LEN];
    char some_text[LEN] = "Я когда нибудь разбирусь с make файлами. Когда нибудь.";
    char name[LEN] = "- Митюшин Пётр";
    FILE *file_ptr;
    file_ptr = fopen("newfile.txt", "w");
    if (file_ptr != NULL){
        printf("newfile successful create");
        while(fgets(str, LEN, file_ptr));
            fputs(some_text, file_ptr);
            fputs(name, file_ptr);
            fprintf(stdout, "%s", str);
    }
    return 0;
}
