#include <stdio.h>

/**
 ��� ��������� ����. ������� ���������� ������������ � ��� �������� � �����
 (������� ������ ����� EOLN � ����� ����� EOF ��� �������� ���������� �������� �� ���������).
*/

int main()
{
    int nc;
    char symbol, c;
    FILE *file = fopen("test.txt", "r");
    while ((symbol = fgetc(file)) != EOF)
    {
        ++nc;
    }
    printf("%d", nc);
    return 0;
}
