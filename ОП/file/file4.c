/**Text4°. Дан текстовый файл. Вывести количество содержащихся в нем символов и строк
(маркеры концов строк EOLN и конца файла EOF при подсчете количества символов не учитывать).*/

#include <stdio.h>

int main(){
    char *fname = "file4.txt";
    FILE *f = fopen(fname, "r");

    int sum = 0, str = 0;
    char c;
    while((c = fgetc(f)) != EOF){
        sum++;
        if (c == '\n')
            str++;
    }
    printf("col-vo symbol in text = %d\n", sum-str);
    printf("col-vo strok in text = %d\n", str);

    return 0;
}
