/** Text3. Дано имя файла и целое число N (0 < N < 27). Создать текстовый файл с указанным именем и записать в него N строк длины N;
строка с номером K (K = 1, …, N) должна содержать K начальных прописных (т. е. заглавных) латинских букв, дополненных справа символами «*» (звездочка).
Например, для N = 4 файл должен содержать строки «A***», «AB**», «ABC*», «ABCD».*/
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
string name;
int n, k, i;
    cin >> name >> n >> k;
string al,z(n-k,'*');
    ofstream fout;
    fout.open(name.c_str());
    for(i = 0;i<n;i++) {
        al += 'A'+i;
        if (i+1 != k)
            fout << al << endl;
        else
            fout << al << z << endl;
    }
    return 0;
}
