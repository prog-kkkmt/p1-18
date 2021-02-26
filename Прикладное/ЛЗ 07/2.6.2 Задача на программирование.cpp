#include <iostream>

char* myresize(char* str, int my_size, int new_size)
{
    char *new_str = new char[new_size];
    int to_move = my_size > new_size ? new_size : my_size;
    for (int i = 0; i < to_move; ++i){
        new_str[i] = str[i];
    }
    delete [] str;
    return new_str;
}

char *getline()
{
    int MAXLEN = 10, i;
    char c;
    char *final_string = new char[MAXLEN];
    for (i = 0; std::cin.get(final_string[i]) && final_string[i] != '\n'; ++i) {
        if (i == MAXLEN-2) {
            final_string = myresize(final_string, MAXLEN, MAXLEN *= 1.5);
        }
    }
    final_string[i] = '\0';
    return myresize(final_string, MAXLEN, i+1);
}
