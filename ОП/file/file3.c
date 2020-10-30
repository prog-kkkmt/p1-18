/**Text3. ���� ��� ����� � ����� ����� N (0 < N < 27).
������� ��������� ���� � ��������� ������ � �������� � ���� N ����� ����� N;
������ � ������� K (K = 1, �, N) ������ ��������� K ��������� ���������
(�. �. ���������) ��������� ����, ����������� ������ ��������� �*� (���������).
��������, ��� N = 4 ���� ������ ��������� ������ �A***�, �AB**�, �ABC*�, �ABCD�.*/

#include <stdio.h>

int main(){
    char *fname = "file3.txt";
    FILE *f = fopen(fname, "w");

    int n;
    scanf("%d", &n);
    for (int i = 1; i < n; ++i){
        for (int j = 0; j != i; ++j)
            fprintf(f, "%c", 'A' + j);
        for (int k = 0; k != n - i - 1; ++k)
            fprintf(f, "%c", '*');
        fprintf(f, "\n");
    }

    fclose(f);

    return 0;
}
