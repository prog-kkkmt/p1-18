#include <stdio.h>
#define LEN 100

/**
�������� �������, ������� ��������� ����� ���������� �� ������.
���������� <stdio.h>, <string.h> ���������� �� �����.
*/

int my_strlen(char *str){
	int i;
    for(i = 0; str[i] != '\0'; ++i);
    return i;
}

int main()
{
    char string[LEN];
    gets(string);
    printf("%d", my_strlen(&string));
    return 0;
}
