#include <iostream>

void rec(){
    int a = 0;
    std::cin >> a;
    if ( a == 0 )
        return;
    rec();
    std::cout << a << " ";
}

int main()
{
    rec();
    return 0;
}
