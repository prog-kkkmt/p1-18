#include <iostream>

/**
���������� 3.5. �������� ���������, �������� �� ������������ ���������� ����� ����� ������.
�������� ��������� ���, ����� ��� ������ ��������� �����.
*/

using std::string;
using std::cin;

int main()
{
    string str;
    while (getline(cin, str)) {
        std::cout << str << std::endl;
    }
    while (cin >> str) {
        std::cout << str << std::endl;
    }
    return 0;
}
