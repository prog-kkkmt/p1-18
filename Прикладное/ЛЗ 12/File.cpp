#include <iostream>
#include <cstddef>
#include <cstring>

struct String {

	explicit String(size_t n, char c) {
        char *s = new char[n+1];
        int i;
        for (i = 0; i < n; ++i) {
            s[i] = c;
        }
        s[++i] = '\0';
        str_size = n;
        this->str = s;
    }
	~String() {
         delete [] str;
     }
	size_t str_size;
	char *str;
};

int main()
{
    size_t n;
    char symbol;
    std::cin >> n >> symbol;
    String my_string(n, symbol);
    std::cout << my_string.str;
    return 0;
}
