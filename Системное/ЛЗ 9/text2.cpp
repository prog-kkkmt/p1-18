/** Text2. ���� ��� ����� � ����� ����� N (0 < N < 27).
������� ��������� ���� � ��������� ������ � �������� � ���� N �����:
������ ������ ������ ��������� �������� (�. �. ���������) ��������� ����� �a�, ������ � ����� �ab�, ������ � ����� �abc� � �. �.;
��������� ������ ������ ��������� N ��������� �������� ��������� ���� � ���������� �������.*/
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
    string name;
    int n, k, i;
    cin >> name >> n;
    string nk;
    ofstream output (name);
    for(i = 0;i<n;i++) {
        nk += 'a'+i;
        output << nk << endl ;

    }
    return 0;
}
