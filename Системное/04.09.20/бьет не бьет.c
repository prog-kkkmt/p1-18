/**Сделал Роголев В.А. 04,09,2020
1.+Структура
2.Меню:
    +Добавить
    Удалить -
    +Печатать
    +Загрузить
    +Сохранить
    +Выход
3.Описать функцию бьёт ли карта K1 карту K2 учитывая что КМ козырная -
*/
#include  <stdio.h>
#include <stdlib.h>

struct Card{
    int m;
    int d;
} ;
void download(struct Card *card){
    FILE *fin;
    fin = fopen("text.txt", "r");
//  printf("%d", fin);
    for(int i = 0;i < 6;i++)
        fscanf(fin,"%d %d", &card[i].d, &card[i].m);

}

void ownload(struct Card *card){
    FILE *fout;
    fout = fopen("text.txt", "w");
//  printf("%d", fin);
    for(int i = 0;i < 6;i++)
        fprintf(fout,"%d %d\n", card[i].d, card[i].m);

}
void change(struct Card *card){
   int i,m,d;
   printf ("Enter number card:");
   scanf("%d", &i);
   printf ("Enter rank and suits card:");
   scanf("%d %d", &d, &m);
   card[i].d = d;
   card[i].m = m;
}
void print(struct Card *card){
    for(int i = 0;i < 6;i++)
        printf("%d %d\n", card[i].d, card[i].m);
}

void menu(struct Card *cards){
    int i;
    while(1){
        printf ("1.Dawnload\n");
        printf ("2.Change\n");
        printf ("3.Ownload\n");
        printf ("4.Print card\n");
        printf ("5.Exit\n");
        printf ("Enter number menu:");
        scanf("%d", &i);
        switch (i)
        {
            case 1:download(cards);break;
            case 2:change(cards);break;
            case 3:ownload(cards);break;
            case 4: print(cards);break;
            case 5: return 0;
        }
    }
}
int main(){
    struct Card cards[6];
    menu(cards);
    return 0;
}
