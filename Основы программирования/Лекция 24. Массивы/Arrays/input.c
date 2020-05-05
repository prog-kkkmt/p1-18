int scanf(const char*, ...);
int printf(const char*, ...);
/** Заполнение */
void input(int *v, int n) {
    int i;
    for (i = 0; i < n; i++) {
        printf("v[%d]=", i);
        scanf("%d", (v+i));
    }
}
