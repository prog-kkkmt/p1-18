/** Выполнид Роголев В.А.
Вычислить номер дня в невисокосном году по заданным числу и месяцу. Два целых числа.

Первое число m - номер месяца(1<=m<=12).

Второе число d - номер дня в месяце(1<=d<=31).  
*/

#include <stdio.h>

int main(){
    int a,b,x;
    scanf("%d %d",&a ,&b);
    if (a%2 ==1 && a <7)
        x=a/2-1;
    else if(a<8)
        x=a/2-2;
    else if (a>7 && a%2==0)
        x=a/2;
    else 
        x=a/2-1;
    switch(a){
        case 1:{printf("%d",b);break;}
        case 2:{printf("%d",31+b);break;}
        case 3:{printf("%d",59+b);break;}
        case 4:{printf("%d",90+b);break;}
        case 5:{printf("%d",120+b);break;}
        case 6:{printf("%d",151+b);break;}    
        case 7:{printf("%d",181+b);break;}
        case 8:{printf("%d",212+b);break;}
        case 9:{printf("%d",243+b);break;}
        case 10:{printf("%d",273+b);break;}
        case 11:{printf("%d",304+b);break;}
        case 12:{printf("%d",334+b);break;}
    }
    
    return 0;
}