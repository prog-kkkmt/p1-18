/** Выполнид Роголев В.А.
Напишите функцию, которая возводит число в степень.
напимер:
вход => A B
выход => А^B     
*/

#include <stdio.h>

int main(){
    int a,b;
    scanf("%d %d",&a ,&b);
    int x=1;
    for(int i = 0;i<b;i++)
        x=x*a;
    printf("%d",x);
    return 0;
}