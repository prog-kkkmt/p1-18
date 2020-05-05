int printf(const char *, ...);
/** Печать */
void print(int *v, int n) {
    int i;
    for (i = 0; i < n; i++)
        printf("%d%s", *(v+i), (i < n-1 ? ", " : "\n"));
}
