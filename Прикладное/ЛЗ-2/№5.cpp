#include <iostream>
using namespace std;

int main()
{
    char c = '\0';

    while (cin.get(c)) {
        if (c != ' ' || cin.peek() != ' ') //cin.peek() ���� ��������� �������� �� ������
            cout << c;
    }

	return 0;
}
