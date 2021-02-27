#include <iostream>

int main()
{
    /* ... */
    int nc = 0;
    char c = '\0';
    while (std::cin.get(c)) {
        if (c == ' ' && nc == 0)
        {
            std::cout << c;
            ++nc;
        }
        if (c != ' ')
        {
            nc = 0;
            std::cout << c;
        }
    }

	return 0;
}
