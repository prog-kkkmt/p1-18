
#include <stdio.h>
#define LEN 27
/**
Text2. ���� ��� ����� � ����� ����� N (0 < N < 27). ������� ��������� ���� � ��������� ������ � ��������
� ���� N �����: ������ ������ ������ ��������� �������� (�. �. ���������) ��������� ����� �a�, ������ �
����� �ab�, ������ � �����
�abc� � �. �.; ��������� ������ ������ ��������� N ��������� �������� ��������� ���� � ����������
�������.
**/
int main()
{
    FILE *file = fopen("text2.txt", "w");
    int n, i, in = 0, j;
    char sign = 'a';
    char string[LEN];
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        string[in] = sign;
        string[in+1] = '\0';
        fprintf(file, "%s\n", string);
        sign++;
        in++;
    }
    return 0;
}
