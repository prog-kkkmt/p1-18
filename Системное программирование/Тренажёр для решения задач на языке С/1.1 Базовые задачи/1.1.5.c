#include <stdio.h>
#define LEN 1000
/**
������� ������� �������� � 15 ��������� ��������, ���� �������� � �������� �� ����, ������� ������ �-�
������� ϸ��
*/

int main()
{
    int i, nc = 0;
    char s[1000];
    gets(s);
    for (i = 0; s[i] != '\0'; ++i){
        if (s[i] == ' '){
            printf("%d ", i);
            ++nc;
        }
    }
    if (nc == 0){
        printf("-");
    }
    return 0;
}
