/**String10�. ���� ������. ������� ������,
���������� �� �� �������, �� ������������� � �������� �������.**/
#include <stdio.h>
#include <string.h>
#define MAX 100

int main(){
    char str[MAX];
    gets(str);
    for (int i = strlen(str)-1; i >= 0; i--)
        printf("%c", str[i]);
return 0;
}
