#include <stdio.h>

struct Time {
    int h ;
    int m ;
};

int time2min(struct Time t) {
    t.m = t.h*60+t.m;
    return t.m;
}

int  main() {
    struct Time t;
    int mm;

    scanf("%d%d", &t.h, &t.m);    // прочитать часы и минуты по формату hh:mm в поля h и m переменной t

    mm = time2min(t);           // вычисляем минуты с 0:00

    printf("%d\n", mm);          // печатаем результат

    return 0;
}
