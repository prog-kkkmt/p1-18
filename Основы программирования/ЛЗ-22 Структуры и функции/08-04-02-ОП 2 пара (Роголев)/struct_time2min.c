#include <stdio.h>
struct Time {
    int hour ;
    int min ;
};

void print(struct Time c) {
    printf("%02d:%02d" , c.hour , c.min);
}

int main() {
    struct Time a;
    // Получить a из консоли
    scanf("%d%d" , &a.hour , &a.min);
    print(a);
    return 0;
}
