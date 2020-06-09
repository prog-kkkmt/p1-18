/**String3. Дан символ C. Вывести два символа, первый из которых
предшествует символу C в кодовой таблице, а второй следует за символом C.
Брусник Вадим П1-18*/
#include <iostream>
using namespace std;
int main()
{
    char C;
    cin >> C;
    cout << char(C - 1) << " " << char(C + 1);
    return 0;
}
