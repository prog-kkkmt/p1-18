/** ���� ��� ����� � ����� ����� N (0 < N < 27).
������� ��������� ���� � ��������� ������ � �������� � ���� N �����:
������ ������ ������ ��������� �������� (�. �. ���������) ��������� ����� �a�,
������ � ����� �ab�, ������ � ����� �abc� � �. �.;
��������� ������ ������ ��������� N ��������� �������� ��������� ���� � ���������� �������. */
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main(){

    int n;
    string name;
    char c = 'a';
    cin >> name >> n;
    ofstream fout;
    fout.open(name.c_str());
    for (int i = 0; i < n; ++i){
        for (int j = 0; j <= i; ++j)
            fout << (char)(c+j);
        fout << "\n";
    }
fout.close();
return 0;
}
