unsigned strlen(const char *str)
{
    int i = 0;
    for (; *str != '\0'; ++str)
        ++i;
    return i;
}
