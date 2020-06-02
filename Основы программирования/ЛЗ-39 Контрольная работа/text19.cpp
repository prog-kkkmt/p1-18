/** Text19. Дан текстовый файл. Заменить в нем все
прописные русские буквы на строчные, а все строчные — на прописные. */
/// Роголев В.А. П1-18 27.05.2020

#include <fstream>
#include <iostream>
#include <vector>
#include <string>
#include <cctype>
using namespace std;

int main(){
    setlocale(LC_ALL,"Russian_Russia.1251");
    ifstream fin("input.txt");
    string str;
    vector <string> vText;
    while(fin >> str)
        vText.push_back(str);
    for(size_t i = 0;i < vText.size();i++)
        for(size_t j = 0;j < vText[i].size();j++)
            if (islower(vText[i][j]))
                vText[i][j] = toupper(vText[i][j]);
            else if (isupper(vText[i][j]))
                vText[i][j] = tolower(vText[i][j]);

    ofstream fout("input.txt");
    for(size_t i = 0;i < vText.size();i++){
        fout << vText[i] << " ";
        cout << vText[i] << " ";
    }
    return 0;
}
