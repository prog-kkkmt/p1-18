/**Text1°. Дано имя файла и целые положительные числа N и K.
Создать текстовый файл с указанным именем и записать в него N строк,
каждая из которых состоит из K символов «*» (звездочка).*/
#include <stdio.h>

int main(){
    char *fname = "file1.txt";
    FILE *f = fopen(fname, "w");

    int n,k;
    scanf("%d%d", &n,&k);
    for (int i = 0; i != n; ++i){
        for (int j = 0; j != k; ++j)
            fprintf(f, "%c", '*');
        fprintf(f, "\n");
    }

    fclose(f);

    return 0;
}
