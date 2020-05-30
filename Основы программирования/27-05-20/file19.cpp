/** File19. Дан файл вещественных чисел. Найти его последний локальный максимум
(локальным максимумом называется элемент, который больше своих соседей).*/
/// Роголев В.А. П1-18 27.05.2020

#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

int main(){
    ifstream fin("inputfile.txt");
    vector <int> vn;
    int n, nid, id;
    while(fin >> n)
        vn.push_back(n);
    for(size_t i = 0;i < vn.size();i++)
        if (vn[i] > vn[i-1] && vn[i] > vn[i+1]){
            id = i;
            nid = vn[i];
        }
    cout << id << "№ chislo -" << nid;
    return 0;
}
