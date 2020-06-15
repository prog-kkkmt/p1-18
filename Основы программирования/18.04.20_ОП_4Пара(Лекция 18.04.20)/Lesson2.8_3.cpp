#include <cstdio>

int main()
{
    int h = 20, m = 14;
    printf("Time: %d:%d\n", h, m);
    printf("It`s %.2f hours to midnight\n", ((24 - h) * 60.0 - m) / 60);

    int a = 0, b = 0;
    printf("Enter a and b: ");
    scanf("%d %d", &a, &b);
    printf("a + b = %d\n", (a + b));
    return 0;
}
