/**String13. Äàíà ñòðîêà.Ïîäñ÷èòàòü êîëè÷åñòâî
ñîäåðæàùèõñÿ â íåé öèôð.**/
#include <stdio.h>
#include <string.h>
#define MAX 100

int main(){
    int digit = 0;
    char str[MAX];
    gets(str);
    for (int i = 0; str[i] != '\0'; i++)
        if ('0' <= str[i] && str[i] <= '9')
            digit++;
    printf("%d", digit);
return 0;
}
