//Gerasimov Dmitry P1-18
//  Bubble sort
#include <stdio.h>
#define MAXX 5

void printMas(int mas[], int len_mas);
void bubbleSort(int mas[], int len_mas);

int main()
{
    int mas[] = {5, 10, 1, -3, 0};
    
    printMas(mas, MAXX);    //Output mas
    
    bubbleSort(mas, MAXX);  //Bubble sort
    
    printMas(mas, MAXX);    //Output mas

    return 0;
}

void printMas(int mas[], int len_mas){
    for (int i = 0; i != MAXX; ++i)
        printf("%d ", mas[i]);
    printf("\n");
}

void bubbleSort(int mas[], int len_mas){
    int t;
    for (int i = 0; i != MAXX; ++i)
        for (int j = i + 1; j != MAXX; ++j)
            if (mas[i] > mas[j]){
                t = mas[i];
                mas[i] = mas[j];
                mas[j] = t;
            }
}
