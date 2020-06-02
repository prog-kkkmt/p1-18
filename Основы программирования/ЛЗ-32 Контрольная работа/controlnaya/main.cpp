#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

typedef struct AutoPr
{
    int mes;
    string name;
    int prod;
} AutoP;

int main()
{
    setlocale(LC_ALL, "Russian");
    int m = 1,i,ch = 0,c = 0;
    char g;
    vector<int> chet;
    cout << "Загрузка..." << endl;
    ifstream fin ("input.txt");
    ifstream fmin ("input.txt");
    while (!fmin.eof())
    {
        g =fmin.get();
        if (g == '\n')
        m++;
    }
        cout << m << endl;
    vector<AutoP> VAutoP(m);
    for(i = 0; i < m; i++)
    {
        fin >> VAutoP[i].mes >> VAutoP[i].name >> VAutoP[i].prod;
        cout << VAutoP[i].mes << " " << VAutoP[i].name << " " << VAutoP[i].prod << endl;
    }
    for(i = 0; i < m; i++){
        if(VAutoP[i].prod > VAutoP[c].prod){
            chet.clear();
            ch = 1;
            c = i;
            chet.push_back(i);
        }
        else if (VAutoP[i].prod == VAutoP[c].prod){
            chet.push_back(i);
            ch++;
        }
    }
    ofstream fout ("output.txt",ios::app);
    for(i=0;i<ch;i++)
        fout << VAutoP[chet[i]].name << ch <<endl;

    return 0;
}
