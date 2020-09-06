/**

   сделать струтуру число мес€ц год
   сделать меню
   и функции которые надо
*/
#include <stdio.h>
#define LEN 100
#define MAXX 1000

struct date{
    char chislo[LEN];
    char mesac[LEN];
    char god[LEN];
};
typedef struct date date;

void printmenu();
void add(date *arr_date, unsigned *arr_size);
void print(date *arr_date, unsigned arr_size);
void save(date *arr_date, unsigned *arr_size);
void zagr(date *arr_date, unsigned *arr_size);
//void del(date *arr_date, unsigned *arr_size);


int main(){
  date arr_date[MAXX];
	unsigned arr_size = 0;
int countm;
   while(countm != 6){
print_men();
scanf("%d",&countm);
    switch(countm){
        case 1:
            add(arr_date, &arr_size);
            break;
        case 2:
           // del(arr_date, &arr_size);
            break;
        case 3:
           // print(arr_date,arr_size);
            break;
        case 4:
            zagr(arr_date,&arr_size);
            break;
        case 5:
            save(arr_date,arr_size);
            break;
}
    }

    return 0;
}

void print_men(){
    printf("1.Add\n");
    printf("2.Del\n");
    printf("3.Print\n");
    printf("4.Download\n");
    printf("5.Save\n");
    printf("6.Exit\n\n");
}
void add(date *arr_date, unsigned *arr_size){
    printf("\nVvedite chislo: ");
    scanf("%s", arr_date[*arr_size].chislo);
    printf("Input mesac: ");
    scanf("%s", arr_date[*arr_size].mesac);
    printf("Input god: ");
    scanf("%s\n", arr_date[*arr_size].god);
    ++(*arr_size);
}
//void print(){

//}
void save(date *arr_date, unsigned *arr_size){
FILE *file = fopen("text.txt", "w");
	for (unsigned i = 0; i != arr_size; ++i)
		fprintf(file, "%s\t%s\t%s\t%s\n", arr_date[i].chislo, arr_date[i].mesac, arr_date[i].god);
	fclose(file);
}
void zagr(date *arr_date, unsigned *arr_size){
FILE *file = fopen("text.txt", "r");
	for (int i = 0; fscanf(file, "%s%s%s%s", arr_date[i].chislo, arr_date[i].mesac, arr_date[i].god) != EOF; ++i)
		++(*arr_size);
	fclose(file);
}
