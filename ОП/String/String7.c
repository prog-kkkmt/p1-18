/**String7. ���� �������� ������.
������� ���� �� ������� � ���������� �������. **/
#include <stdio.h>
#define MAX 100

int main(){
    char str[MAX];
    scanf("%s", &str);
    printf("%d ", str[0]);
    for (int i = 0; i < MAX; i++)
        if (str[i] == '\0'){
            printf("%d", str[i - 1]);
            break;
            }
return 0;
}
