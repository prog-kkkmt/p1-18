#include <stdio.h>
#define LEN 1000

/**Äàíà ñòğîêà S è òåêñòîâûé ôàéë. Äîáàâèòü ñòğîêó S â êîíåö ôàéëà.*/

int main(){
    char s[LEN] = "werhewruih";
    char str[LEN];
    FILE *file;
    file = fopen("newfile.txt", "a");
    fprintf(file, s);
    return 0;
}
