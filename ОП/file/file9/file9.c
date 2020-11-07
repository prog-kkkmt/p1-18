/**Text9. Дано целое число K и текстовый файл.
Вставить пустую строку перед строкой файла с номером K.
Если строки с таким номером нет, то оставить файл без изменений.*/

#include <stdio.h>

int main() {
    char *name1 = "input.txt";
    char *name2 = "output.txt";
    FILE* f1 = fopen(name1, "r");
    FILE* f2 = fopen(name2, "w");
    int k, i = 1;
    printf("Print number k: ");
    scanf("%d", &k);
    char c;
    while ((c = fgetc(f1)) != EOF) {
        fprintf(f2, "%c", c);
        if (c == '\n'){
            i++;
            if (i == k)
            fprintf(f2, "\n");
        }
    }
    fclose(f1);
    fclose(f2);
    if (remove(name1) == -1)
        perror("Error in deleting a file");
    else if(rename(name2, name1)!=0)
        printf("error renaming the file.\n");

    return 0;
}
