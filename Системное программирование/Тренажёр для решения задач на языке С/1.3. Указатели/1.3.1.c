#include <stdio.h>

/**
Напишите программу, которая выводит размеры типов данных, указанных ниже.
char, char*, char**
int, int*, int**
float, float*, float**
double, double*, double**
Запятые, пробелы и переносы строк сохранить. В разных системах эти значения могу варьироваться, поэтому лучше воспользоваться встроенным оператором.
*/

int main(){
    printf("%d, %d, %d\n", sizeof(char), sizeof(char*), sizeof(char**));
    printf("%d, %d, %d\n", sizeof(int), sizeof(int*), sizeof(int**));
    printf("%d, %d, %d\n", sizeof(float), sizeof(float*), sizeof(float**));
    printf("%d, %d, %d", sizeof(double), sizeof(double*), sizeof(double**));
    return 0;
}
