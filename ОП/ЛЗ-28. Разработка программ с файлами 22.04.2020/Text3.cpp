/*Text3. Дано имя файла и целое число N (0 < N < 27).
Создать текстовый файл с указанным именем и записать в него N строк длины N;
строка с номером K (K = 1, …, N) должна содержать K начальных прописных (т. е. заглавных) латинских букв,
дополненных справа символами «*» (звездочка).
Например, для N = 4 файл должен содержать строки «A***», «AB**», «ABC*», «ABCD».*/

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
    string path;
    int N;
    cin >> path;
    cin >> N;

    char star = '*';

    ofstream fout;
    fout.open(path);

    for (int i = 1; i < N; i++)
    {
        int ch = 65;
        char chr = (char)ch;
        for (int j = 0; j < i; j++) 
        {
            char chr = (char)ch;
            fout << chr;
            ch++;
        }
        for (int n = 0; n < (N - i); n++)
        {
            fout << star;
        }
        fout << endl;
    }
    fout.close();
    return 0;
}
