/**
    Герасимов Дмитрий П1-18
    3.1
*/
#include <stdio.h>
#define LEN 100

struct Adres{
    char town[LEN];
    char street[LEN];
    char home[LEN];
    char flat[LEN];
}Spisok;

void menu();
void add();
void print();
void save();

int main(){
    FILE *fall = fopen("text.txt","a");
    char str[LEN];
    scanf("%s",str);
    /*fprintf(fine, "%s\n", str);*/
    int otvet = -1;
    while (otvet){
        menu();
        scanf("%d", &otvet);
        if (otvet == 1)
            add();
        else if (otvet == 3)
            print();
    }
    printf("Bivai\n");

    return 0;
}

void menu(){
    printf("1.Add\n");
    printf("2.Del\n");
    printf("3.Print\n");
    printf("4.Download\n");
    printf("5.Save\n");
    printf("0.Exit\n\n");
}
void add(){
    printf("Input town: ");
    scanf("%s", Spisok.town);
    printf("Input street: ");
    scanf("%s", Spisok.street);
    printf("Input home: ");
    scanf("%s", Spisok.home);
    printf("Input flat: ");
    scanf("%s", Spisok.flat);
}
void print(){

}
void save(){

}
