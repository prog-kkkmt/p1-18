/** Выполнид Роголев В.А.
Число сочетаний.
Допустим у вас имеется N хоккеистов. Из них нужно сформировать команду из K человек. Сколько существует вариантов это сделать? На подобные вопросы существует стандартный ответ - число сочетаний. Примечание: ответ выводить с точностью до двух знаков после запятой.


Входные данные:
Два натуральных числа N, K, (K<N), N<12.

Выходные данные:
Одно число, число сочетаний.

Подсказки:
Необходимо написать две функции: factorial(p) и combin(n, k).
*/

#include<stdio.h>

int factorial(int p){
    int x = 1;
    for(int i = 1;i <= p;i++)
        x=x*i;
    return x;
}
float combin(int n, int k){
    return (factorial(n)/(factorial(k)*factorial(n-k)));
}

int main(void){
    int n = 0, k = 0;
    scanf("%d %d",&n,&k);

    printf("%.2f",combin(n,k));

    return 0;
}