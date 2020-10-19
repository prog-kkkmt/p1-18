/*Text3. ���� ��� ����� � ����� ����� N (0 < N < 27).
������� ��������� ���� � ��������� ������ � �������� � ���� N ����� ����� N;
������ � ������� K (K = 1, �, N) ������ ��������� K ��������� ��������� (�. �. ���������) ��������� ����,
����������� ������ ��������� �*� (���������).
��������, ��� N = 4 ���� ������ ��������� ������ �A***�, �AB**�, �ABC*�, �ABCD�.*/

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
    string path;
    int N;
    cin >> path;
    cin >> N;

    char star = '*';

    ofstream fout;
    fout.open(path);

    for (int i = 1; i < N; i++)
    {
        int ch = 65;
        char chr = (char)ch;
        for (int j = 0; j < i; j++)
        {
            char chr = (char)ch;
            fout << chr;
            ch++;
        }
        for (int n = 0; n < (N - i); n++)
        {
            fout << star;
        }
        fout << endl;
    }
    fout.close();
    return 0;
}
