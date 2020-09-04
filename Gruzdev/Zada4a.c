/** type строка = packed array[1..15] of char;
    вершина = record название:строка
                    высота:1000..9999
                end.
    список = array [1..30] of вершина;
Описать процедуру СамаяВысокая(С), печатающую название самой высокой вершины из списка.
*/


#include <stdio.h>
#define LEN 15
#define MAX 2



struct vertex{
    char name[LEN];
    int height;
};

void menu(){
    printf("Enter the number: \n");
    printf("1. Add \n");
    printf("2. Delete \n");
    printf("3. Save \n");
    printf("4. Download \n");
    printf("5. Print \n");
    printf("6. Exit \n");
    printf("7. Zapolnit' \n");
}
/*
void overHeight(struct vertex arr){

    for(int i = 0; i != MAX; i++)


} */


int main(){
    struct vertex arr[MAX];
    int number = -1;
    while(number != 6){
        menu();
        scanf("%d", &number);


    switch(number){
    case 1:

    break;
    case 2:

    break;
    case 3:
       /* FILE *file = fopen("text.txt","w");
        for(int i = 0; i != MAX; i++)
            fprintf(file,"%s : %d\n",arr[i].name, arr[i].height); */
    break;
    case 4:

    break;
    case 5:
        for(int i = 0; i != MAX; i++)
            printf("%s : %d \n", arr[i].name, arr[i].height);
    break;
    case 6:
        printf("Poke");
    break;
    case 7:
        for(int i = 0; i != MAX;i++){
            scanf("%s", arr[i].name);
            scanf("%d", &arr[i].height);
    }
    break;
        }
    }


    return 0;

    }

