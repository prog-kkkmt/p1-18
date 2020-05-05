/** Нахождение максимального */
int max(int *v, int n) {
    int imax = 0;
    for (int i = 1; i < n; i++)
        if (*(v+i) > *(v+imax))
            imax = i;
    return *(v+imax);
}
