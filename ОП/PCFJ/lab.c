#include <stdio.h>
#include <string.h>

int main(){
    char *fname = "lab.txt";
    FILE *f = fopen(fname, "r");

    char k, c;
    int sowp = 0;
    scanf("%c", &k);
    while ((c = fgetc(f)) != EOF){
            if (c == k)
                ++sowp;
    }

    printf("%d", sowp);
    fclose(f);

    return 0;
}
