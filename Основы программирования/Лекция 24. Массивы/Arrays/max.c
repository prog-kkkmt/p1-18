/** Нахождение максимального */
int max(int *v, int n) {
    int imax = 0;
    int i;
    for (i = 1; i < n; i++)
        if (*(v+i) > *(v+imax))
            imax = i;
    return *(v+imax);
}
