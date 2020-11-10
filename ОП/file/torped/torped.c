#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(){
    FILE *f = fopen("input.txt", "r");
    char date[20];
    char name[20];
    char group[20];
    char mark[2];
    char g[6];
    int i = 0, month;
    float sr = 0;

    printf("Print month: ");
    scanf("%d", &month);
    printf("Print group: ");
    scanf("%s", &g);
    while (fscanf(f, "%*d.%d.%*d%s%s%s", date, name, group, mark) > 0) {
        if (month == *date && strcmp(g, group) == 0) {
            sr = sr + (*mark - '0');    //atoi(mark)
            i++;
        }
    }
    printf("\naverage mark: %.2f\n", sr / i);
    fclose(f);
    return 0;
}
