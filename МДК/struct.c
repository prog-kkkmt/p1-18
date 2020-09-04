#include <stdio.h>
#include <stdlib.h>
struct persone {
    char School[20];
    char Class[20];
    char Age[20];
    char Numbers[20];
    char NameFirst[20];
    char NameSecond[20];
    char NameLast[20];
};
int main() {
    struct persone p;
    int n;
    scanf("%d", &n);
    if(n == 1){
        printf("Print NameFirst : ");
        scanf("%s", p.NameFirst);
        printf("Print NameSecond : ");
        scanf("%s", p.NameSecond);
        printf("Print NameLast : ");
        scanf("%s", p.NameLast);
        printf("Print Age: ");
        scanf("%s", p.Age);
        printf("Print School: ");
        scanf("%s", p.School);
        printf("Print Class: ");
        scanf("%s", p.Class);
        printf("Print Numbers: ");
        scanf("%s", p.Numbers);
        printf("\nYou printing : \n Name first: %s \n Name second: %s \n Name last: %s \n Age: %s \n School: %s \n Class: %s \n Numbers: %s ", p.NameFirst, p.NameSecond, p.NameLast, p.Age, p.School, p.Class, p.Numbers);
    }
    else
        printf("Ne rabotaet!");
    return 0;
}
