/*Text1°. Дано имя файла и целые положительные числа N и K.
Создать текстовый файл с указанным именем и записать в него N строк,
каждая из которых состоит из K символов «*» (звездочка).*/

#include <iostream>
#include <fstream>

using namespace std;

int main()
{
    string path;
    cin >> path;
    int N, K;
    cin >> N >> K;
    char ch;
    cin >> ch;
    ofstream fout;
    fout.open(path);
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < K; j++)
        {
            fout << ch;
        }
        fout << endl;
    }
    fout.close();
    return 0;
}