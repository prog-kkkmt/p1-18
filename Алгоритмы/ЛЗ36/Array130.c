#include <stdio.h>
#include <stdlib.h>

/**
Array130. Дан целочисленный массив размера N.
Преобразовать массив, увеличив все его серии наибольшей длины на один элемент.
Использовать динамическое выделение памяти
/** Определение. Пусть дан целочисленный массив A размера N.
Назовем серией группу подряд идущих одинаковых элементов,
а длиной серии — количество этих элементов (длина серии может быть равна 1).
*/

int temp, len = 1, end_len = 0;

void swapElementArray(int *array, int n, int index, int ser_int)
{
    temp = array[index];
    //array[index] = ser_int;
    array[index+1] = temp;
    ++end_len;
}

void findSeriesOfNumbers(int *array, int n)
{
    int i, max_len, index, ser_int;
    for (i = 0; i < n; ++i)
    {
        if (array[i] == array[i + 1])
        {
            index = i+1;
            ++len;
        }
        else if (array[i] != array[i + 1] && len > max_len)
        {
            ser_int = array[i];
            max_len = len;
        }
    }
    swapElementArray(array, n, index, ser_int);
}

int main()
{
    int n, i;
    scanf("%d", &n);
    int *array = (int*)malloc(sizeof(int) * 100);
    for (i = 0; i < n; ++i)
    {
        scanf("%d", &array[i]);
    }
    findSeriesOfNumbers(array, n);
    end_len += len;
    for (i = 0; i < len+n; ++i)
    {
        printf("%d ", array[i]);
    }
    free(array);
    return 0;
}
