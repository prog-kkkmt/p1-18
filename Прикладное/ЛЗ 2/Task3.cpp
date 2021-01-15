#include <iostream>

int main()
{
    int cont, nc, i, elem_a, elem_b;
    std::cin >> cont;
    while(cont > nc){
        std::cin >> elem_a >> elem_b;
        std::cout << elem_a + elem_b << std::endl;
        ++nc;
    }
    return 0;
}
