#include <stdio.h>

/** ���� ��� ����� � ����� ������������� ����� N � K.
������� ��������� ���� � ��������� ������ � �������� � ���� N �����,
������ �� ������� ������� �� K �������� �*� (���������). */

int main()
{
    FILE *file = fopen("test.txt", "w");
    int n, m, k, i, j;
    char symbol = '*';
    scanf("%d %d", &n, &m);
    for (i = 0; i < n; ++i)
    {
        for (j = 0; j < m; ++j)
        {
            fprintf(file, "%c", symbol);
        }
        fprintf(file, "\n");
    }
    return 0;
}
