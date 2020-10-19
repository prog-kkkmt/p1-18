#include <iostream>

using namespace std;

int main()
{
    string str = "";
    FILE *file;
    file = fopen("namefile.txt", "w");
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i){
        fprintf(file, "%c%c", 'A' + i, str);
        str = "";
        for (int j = n - 1; j > 0; --j){
            str = str + '*';
        }
    }
    return 0;
}
