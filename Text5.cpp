//Text5. ���� ������ S � ��������� ����. �������� ������ S � ����� �����.
#include <iostream>
#include <string>
#include <fstream>
using namespace std;
int main(){
  string s;
	ofstream vvv("File.txt", ios::app);
	getline(cin, s);
	vvv << s << endl;
	vvv.close();
	return 0;
}
