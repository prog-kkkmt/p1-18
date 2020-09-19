/**String9°. Дано четное число N (> 0) и символы C1 и C2.
Вывести строку длины N, которая состоит
из чередующихся символов C1 и C2, начиная с C1.
**/
#include <stdio.h>
#define MAX 100

int main(){
    int n;
    char c1, c2, str[MAX];
    scanf("%d %c %c", &n, &c1, &c2);
    for (int i = 0; i < n; i++){
        str[i] = c1;
        printf("%c", str[i]);
    for (int i = 0; i < n; i++)
        str[i] = c2;
        printf("%c", str[i]);
    }
return 0;
}
