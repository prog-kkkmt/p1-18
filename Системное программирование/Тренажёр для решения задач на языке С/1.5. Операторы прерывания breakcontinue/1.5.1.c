#include <stdio.h>
#include <string.h>
#define LEN 1000

/**
�������� ��������� ����������� ������ ���� � �������.
���� ��� ��� ������� ���������� � ��������� �����, ��� ���������� �� ���������.
*/

int main(){
    char str[LEN];
    gets(str);
    int i;
    str[0] = toupper(str[0]);
    for (i = 0; str[i] != '\0'; ++i){
        if (str[i] == ' '){
            str[i + 1] = toupper(str[i + 1]);
        }
    }
    printf("%s", str);
    return 0;
}
