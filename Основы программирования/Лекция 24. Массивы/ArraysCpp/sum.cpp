/** Нахождение суммы */
int sum(int *v, int n) {
    int s = 0;
    for (int i = 0; i < n; i++)
        s += *(v + i);
    return s;
}
