/** �������� ���������, �������� �� ������������ ���������� ����� ����� ������.
�������� ��������� ���, ����� ��� ������ ��������� �����. */

#include <iostream>
#include <string>

using namespace std;
/**
int main()
{
string line;
while (getline(cin, line))
cout << line << endl;
return 0;
}
*/
int main()
{
    string s;
    cin >> s;
    while (s != " ")
    {
        cout << s << endl;
        cin >> s;
        if (s == " ")
        {
            cout << endl;
            continue;
        }
    }
    return 0;
}
