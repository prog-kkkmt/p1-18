#include <iostream>
#include <string>
#include <fstream>
using namespace std;

int main () {
string stars;
cin >> stars;
ofstream file;
file.open("file.txt", ios_base::app);
file << '\t' << stars;
return 0;
}

