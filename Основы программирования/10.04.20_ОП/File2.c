#include <stdio.h>

int main()
{
    FILE * fin  = fopen("data.txt", "r");
    FILE * fout = fopen("out.txt", "w");

    char c;
    while((c = fgetc(fin)) != EOF) {
        putc(c, fout)
    }
    fclose(fin);
    fclose(fout);

    return 0;
}
