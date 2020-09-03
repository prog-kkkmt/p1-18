/** Груздев Роман, П1-18*/
#include <stdio.h>
#include <string.h>
#define LEN 256
#define MAX 1000

int main() {

    int mas[LEN];
    char str[MAX];

        for(int i = 0; i != LEN; i++)
            mas[i] = 0;

        gets(str);

        for(int i = 0; i != strlen(str);i++)
            mas[str[i]]++;

        for(int i = 0; i != LEN; i++)
            printf("%d %X %c : %d\n", i, i, i, mas[i]);
  return 0;
}
