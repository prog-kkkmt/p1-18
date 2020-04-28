/** Задача приветствует того, чьё имя вы введёте, только теперь чтение из файла и выводится в отдельный файл  */

// Проверил: Батраков Данила П1-18

#include <string>
#include <fstream> 
using namespace std;

int main(){
	string name;
	ifstream input("input.txt");
	input >> name;

	ofstream output("output.txt");
	output << "Hi, " << name << endl;

    return 0;
}
