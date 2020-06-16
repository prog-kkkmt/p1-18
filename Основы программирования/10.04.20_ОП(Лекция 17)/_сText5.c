#include <stdio.h>
#define LEN 1000

/**Äàíà ñòðîêà S è òåêñòîâûé ôàéë. Äîáàâèòü ñòðîêó S â êîíåö ôàéëà.*/

int main()
{
    char str[LEN];
    char some_text[LEN] = "ß êîãäà íèáóäü ðàçáèðóñü ñ make ôàéëàìè. Êîãäà íèáóäü.";
    char name[LEN] = "- Ìèòþøèí Ï¸òð";
    FILE *file_ptr;
    file_ptr = fopen("newfile.txt", "w");
    if (file_ptr != NULL){
        printf("newfile successful create");
        while(fgets(str, LEN, file_ptr));
            fputs(some_text, file_ptr);
            fputs(name, file_ptr);
            fprintf(stdout, "%s", str);
    }
    return 0;
}
