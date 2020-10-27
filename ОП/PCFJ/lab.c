#include <stdio.h>
#include <string.h>

int main(){
    char *fname = "lab.txt";
    FILE *f = fopen(fname, "r");

    char k;
    int sowp = 0;
    scanf("%c", &k);
    for (int i = 0; i != EOF; ++i){
            if (i == k)
                ++sowp;
    }

    printf("%d", sowp);
    fclose(f);

    return 0;
}
