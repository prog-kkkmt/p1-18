#include <stdio.h>

int main(){
    int rel = -100;
    int max = -100;
    int a = -100;
    int b = -100;
    for (int i = 0; i<15; i++){
        scanf("%d", &a);
        rel = a;
        if (rel > max)
            max = rel;
        else if (rel == max)
            continue;
    }
    printf("%d", max);
    return 0;
}
