#include <stdio.h>
/** ���� ��� ����� � ����� ������������� ����� N � K.
������� ��������� ���� � ��������� ������ � �������� � ���� N �����,
������ �� ������� ������� �� K �������� �*� (���������). **/
int main()
{
    FILE *new_file = fopen("text1.txt", "w");
    int n, k, i, j;
    char sign = '*';
    scanf("%d %d", &n, &k);
    for (i = 0; i < n; ++i){
        for (j = 0; j < k; ++j){
            fprintf(new_file, "%c", sign);
        }
        fprintf(new_file, "\n");
    }
    return 0;
}
