#include <stdio.h>
#include <locale.h>
#define LEN 27
/**
���� ��� ����� � ����� ����� N (0 < N < 27). ������� ��������� ���� � ��������� ������ � ��������
� ���� N �����: ������ ������ ������ ��������� �������� (�. �. ���������) ��������� ����� �a�,
������ � ����� �ab�, ������ � ����� �abc� � �. �.;
��������� ������ ������ ��������� N ��������� �������� ��������� ���� � ���������� �������.
*/
int main()
{
    setlocale(LC_ALL, "Rus");
    FILE *file = fopen("test.txt", "w");
    int n, i, ind = 0, j;
    char symbol = 'a';
    char string[LEN];
    scanf("%d", &n);
    for (i = 0; i < n; ++i)
    {
        symbol += i;
        string[ind] = symbol;
        fprintf(file, "%s\n", string);
        ++ind;
    }
    return 0;
}
