/** Text3. ���� ��� ����� � ����� ����� N (0 < N < 27). ������� ��������� ���� � ��������� ������ � �������� � ���� N ����� ����� N;
������ � ������� K (K = 1, �, N) ������ ��������� K ��������� ��������� (�. �. ���������) ��������� ����, ����������� ������ ��������� �*� (���������).
��������, ��� N = 4 ���� ������ ��������� ������ �A***�, �AB**�, �ABC*�, �ABCD�.*/
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
    string name;
    int n, k, i;
    cin >> name >> n >> k;
    string nk,z(n-k,'*');
    ofstream output (name);
    for(i = 0;i<n;i++) {
        nk += 'A'+i;
        if (i+1 != k)
            output << nk << endl;
        else
            output << nk << z << endl;
    }
    return 0;
}
