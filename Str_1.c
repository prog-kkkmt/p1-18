#include <stdio.h>
#include <string.h>
size_t strlen(const char *s){
    int len = 0;
    int i = 0;
    while (s[i] > 0){
        len++;
        i++;
    }
    return len;
}
int main(){
    char s[100];
    scanf("%s", s);
    printf("%d", strlen(&s) );
    return 0;
}
