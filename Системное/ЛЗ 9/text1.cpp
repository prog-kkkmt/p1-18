/** Text1�. ���� ��� ����� � ����� ������������� ����� N � K.
������� ��������� ���� � ��������� ������ � �������� � ���� N �����, ������ �� ������� ������� �� K �������� �*� (���������). */
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
string name;
int n, k, i;
cin >> name >> n >> k;
string nk(k,'*');
ofstream output (name);
for(i = 0;i<n;i++)
output << nk << endl ;

return 0;
}
