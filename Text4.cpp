//Text4. ��� ��������� ����. ������� ���������� ������������ � ��� �������� � ����� (������� ������ ����� EOLN � ����� ����� EOF ��� �������� ���������� �������� �� ���������).
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
int main () {
    string name ;
    char n;
    int countt = 0;
    ifstream inp("File.txt");
    inp >> n;
    while(!inp.eof())
    {
        char ch;
            inp>>noskipws >>ch;
            countt++;
        }
    cout << "Kol-vo simvolov  " << countt << endl;
    return 0;
}
