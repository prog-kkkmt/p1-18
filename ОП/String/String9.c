/**String9�. ���� ������ ����� N (> 0) � ������� C1 � C2.
������� ������ ����� N, ������� �������
�� ������������ �������� C1 � C2, ������� � C1.
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
