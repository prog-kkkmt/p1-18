#include <iostream>
#include <cstring>

using namespace std;

int main()
{
    char s[] = "Hello";
    cout << s << endl;
    // Работа со строками как в C
    char s1[100] = "Hello";
    cout << strlen(s1) << endl; // выводит длину строки
    char s2[] = ", world!";
    strcat(s1, s2); // функция для склеивания строк

    char s3[6] = {72, 101, 108, 108, 111};
    if (strcmp(s1, s3) == 0){ //strcmp для сравнения двух строк
        cout << "s1 == s3" << endl;
    }
    return 0;
}
