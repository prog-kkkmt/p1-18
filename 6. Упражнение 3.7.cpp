/** �������� ���������, ������� ������ ��� ������ � ����������, ����� �� ���, � ���� ���, ����� �� ��� ������.
�������� ��������� ���, ����� ��� ���������, ����� �� ������ ���������� �����, � ���� ���, �� ����� �� ��� �������. */

#include <iostream>

using namespace std;

int main()
{
    string str1, str2;
    while (getline(cin, str1))
    {
                break;
    }
    while (getline(cin, str2))
    {
                break;
    }
    if (str1 == str2)
        cout<<"str1 = str2"<< endl;
    if (str1 > str2)
        cout<<"str1 > str2"<< endl;
    if (str1 < str2)
        cout<<"str1 < str2"<< endl;



    if (str1.size() == str2.size())
        cout<<"size str1 = size str2"<< endl;
    if (str1.size() > str2.size())
        cout<<"size str1 > size str2"<< endl;
    if (str1.size() < str2.size())
        cout<<"size str1 < size str2"<< endl;
    return 0;
}
