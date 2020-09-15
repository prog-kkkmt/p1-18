/*
«аписи
ќпределить студентов с баллом выше среднего. ѕрограмме на вход подаютс€
данные о количестве студентов, их фамилии, имени и балл дл€ каждого.
ѕрограмма должна определить средний балл среди всех студентов и вывести
фамилии и имена студентов, чей балл не ниже среднего.

Sample Input:
    5
    Ivanov Dmitriy 4.6
    Petrov Sergey 4.4
    Kostin Valeriy 3.9
    Gorina Darya 4.3
    Malinina Mariya 4.5
Sample Output:
    Ivanov Dmitriy
    Petrov Sergey
    Malinina Mariya
*/

#include <stdio.h>
#include <stdlib.h>
#define LEN 25

typedef struct Student{
    char name[LEN];
    char surname[LEN];
    double mean;
} Student;

int main(){
    int n;
    scanf("%d", &n);
    Student *men = (Student *)malloc(sizeof(Student) * n);
    double sum = 0;
    for (int i = 0; i < n; ++i){
        scanf("%s%s%lf", men[i].name, men[i].surname, &men[i].mean);
        sum += men[i].mean;
    }
    sum /= n;
    for (int i = 0; i < n; ++i)
        if (men[i].mean >= sum)
            printf("%s %s\n", men[i].name, men[i].surname);

    return 0;
}
