#include <iostream>
#include <cstddef>
#include <cstring>

struct String {
	String(const char *str = ""){
        int size = strlen(str); this->size = size;
        char *new_str = new char[size+1];
        strcpy(new_str, str);
        this->str = new_str;
    }
	String(size_t n, char c)
	{
	    char *s = new char[n+1];
        int i;
        for (i = 0; i < n; ++i) {
            s[i] = c;
        }
        s[++i] = '\0';
        size = n;
        this->str = s;
	}
	void append(String &other) {
        size_t length = other.size + size;
        char *final_string = new char[length+1];

        strcpy(final_string, str);
        strcat(final_string, other.str);

        delete [] str;

        str = final_string;
        size = length;
    }
    ~String() {
         delete [] str;
     }
	size_t size;
	char *str;
};
int main()
{
    size_t n;
    char symbol;
    std::cin >> n >> symbol;
    String my_string1(n, symbol);
    std::cout << my_string1.str << std::endl;

    std::cin >> n >> symbol;
    String my_string2(n, symbol);
    std::cout << my_string2.str << std::endl;

    my_string1.append(my_string2);
    std::cout << my_string1.str << std::endl;
    return 0;
}
