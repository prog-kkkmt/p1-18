#include <stdio.h>
#include <string.h>
#define LEN 100

/**
����� ������� ����� ������ �������� � ��������� (���������) ���� � ������(����� �� ����� 100 ��������),
���������� �� ����. ���������� <stdio.h>, <string.h> ���������� �� �����.
(�� ����� �������� ������ �� ����)
*/

int diff_lower_upper(char * str) {
	int i, count_up = 0, count_low = 0;
    for(i = 0; str[i] != '\0'; ++i){
        if(isupper(str[i])){
            ++count_up;
        }
        if(islower(str[i])){
            ++count_low;
        }
    }
    return count_low - count_up;
}

int main()
{
    char string[LEN];
    gets(string);
    printf("%d", diff_lower_upper(&string));
    return 0;
}
