#define Pupa
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
////void print_menu(){
  //// printf("Chto nado?\n");
   //printf("1.Data\n");
   //printf("2.Vihod\n");
   //printf(">");
   //}
   //int get_variant(int count) {
    //int variant;
    //char s[100];
    //scanf("%s", s);
    //while (sscanf(s, "%d", &variant) != 1 || variant < 1 || variant > count) {
      //  printf("Incorrect input. Try again: ");
        //scanf("%s", s);
    //}
    //return variant;
//}
struct date {
  int day;
  char month[20];
  int year;
};
struct persone {
  struct date dd;
};
int main() {
  int a,b,c;
  FILE *Vhodnoi;
  Vhodnoi = fopen("Z:\\ДенисМатвей\\Vhodnoi.txt","w");
  system("chcp 1251");
  system("cls");
  printf("Chto nado?\n");
  printf("1.Data\n");
  printf("2.Vihod\n");
  printf(">");
  scanf("%d",&a);
  if (a == 1){
      struct persone p;
      printf("Vvedite datu\nChislo: ");
      scanf("%d", &p.dd.day);
      printf("Mesyac: ");
      scanf("%s", p.dd.month);
      printf("God: ");
      scanf("%d", &p.dd.year);
      fprintf(Vhodnoi,"Data: %d %s %d goda",
        p.dd.day, p.dd.month, p.dd.year);
      getchar(); getchar();
      getch();
      fclose(Vhodnoi);}
  else
      printf("Zakroite programmu\n");
  return 0;
}
