#include <stdio.h>

struct Time {
    int h;
    int m;
};

int time2min(struct Time t) {
    int res = t.h * 60 + t.m;
    return res;
}

int  main() {
    struct Time t;
    int mm;
    scanf("%d:%d", &t.h, &t.m);
    printf("%d\n", time2min(t));
    return 0;
}
