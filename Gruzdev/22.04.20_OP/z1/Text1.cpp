/**Text1°. Дано имя файла и целые положительные числа N и K. Создать текстовый файл с указанным именем и записать в него N строк, каждая из которых состоит из K символов «*» (звездочка).*/
// 

#include <iostream>
#include <fstream>
using namespace std;

int main(){

   int n, k;
	ifstream input("in_r.txt");
	input >> n >> k;
  	
	ofstream output("out_r.txt");
	for(int i = 0;i < n; i++){
		for(int j = 0;j < k;j++){
			cout << "*";
			output << "*";
		}
		cout << endl;
		output << endl;
	}


return 0;
}
