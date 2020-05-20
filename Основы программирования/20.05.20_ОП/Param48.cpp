#include <iostream>
#include <fstream>
/**
М. Э. Абрамян
Описать функцию IntFileSize(S) целого типа, возвращающую количество элементов в файле целых чисел с именем S.
Если файл не существует, то функция возвращает −1.
С помощью этой функции найти количество элементов в трех файлах с данными именами.
Митюшин Пётр
*/
using namespace std;

int IntFileSize(ifstream & file)
{
    if (!file.is_open())
    {
        return -1;
    }
    else
    {
        int nc = 0;
        char ch;
        while (file.get(ch))
        {
            ++nc;
        }
        return nc;
    }
}

int main()
{
    ifstream file;
    file.open("input.txt");
    cout << IntFileSize(file) << endl;
    file.close();

    ifstream file2;
    file2.open("input(2).txt");
    cout << IntFileSize(file2) << endl;
    file2.close();

    ifstream file3;
    file3.open("input(3).txt");
    cout << IntFileSize(file3) << endl;
    file.close();
    return 0;
}
