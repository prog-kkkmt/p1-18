char *resize(const char *str, unsigned size, unsigned new_size)
{
    char *string = new char[new_size];
    //string = str;
    for (int i = 0; i < new_size; ++i)
        string[i] = str[i];
    delete [] str;
    return string;
}
