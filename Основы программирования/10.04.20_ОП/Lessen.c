#include <stdio.h>
#define LEN 100

int main()
{
    char str[LEN];
    char name[LEN] = "Hello Lamer";
    FILE *file_ptr;
    file_ptr = fopen("newfile.txt", "w");
    // r - read; w - write; a - перезаписывает содержимое которое там есть
    if (file_ptr != NULL){
        printf("newfile successful create");
        fputs(name, file_ptr);
        while(fgets(str, LEN, file_ptr));
            fprintf(stdout, "%s", str);
    }
    else{
        fprintf(stderr, "newfile unsuccessful create");
        return 1;
    }
    return 0;
}
