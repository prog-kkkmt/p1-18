/**Text6. Даны два текстовых файла.
          Добавить в конец первого файла содержимое второго файла.*/

#include <stdio.h>
#define MAX 20

int main() {
    FILE *f1 = fopen("file1.txt", "a");
    FILE *f2 = fopen("file2.txt", "r");

    char text2[MAX];
    fscanf(f2, "%s", text2);
    fprintf(f1, "%s", text2);

    fclose(f2);
    fclose(f1);

    return 0;
}
