#include<stdio.h>
#include<stdlib.h>
#include<string.h>

typedef int Data;
typedef struct Node{
    Data data;
    struct Node * next;
}Node;

int is_empty();

int is_empty(Node * list){
    return list == NULL;
}

void print(Node * list){
    for (Node * p = list; p != NULL; p = p->next){
        printf("%d", p->data);
    }
}

void push(Node ** list, Data x){
    Node *p = malloc(sizeof(Data));
    p->data = x;
    p->next = *list;
    *list = p;
}

Data pop(Node ** list){
    Node * p = *list;
    Data res = p->data;
    *list = p->next;
    free(p);
    return res;
}

int main(){
    Node * list = NULL;

    FILE *f1 = fopen("input.txt", "r");
    FILE *f2 = fopen("output.txt", "w");
    char name[20];
    int date[20];
    char sum[10];
    int month[20];
    int summ = 0;
    char months[12][10] = { "January", "February", "March", "April",
                        "May", "June", "July", "August", "September",
                        "October", "November", "December"};
    for(int i = 0; i < 12; i++){
        month[i] = 0;
    }
    while(fscanf(f1,"%s%*d.%d.%*d%s", name, date, sum) > 0){
        printf("%d", *date);
        switch (*date){
            case 1:
                month[0] += atoi(sum);
                continue;
            case 2:
                month[1] += atoi(sum);
                continue;
            case 3:
                month[2] += atoi(sum);
                continue;
            case 4:
                month[3] += atoi(sum);
                continue;
            case 5:
                month[4] += atoi(sum);
                continue;
            case 6:
                month[5] += atoi(sum);
                continue;
            case 7:
                month[6] += atoi(sum);
                continue;
            case 8:
                month[7] += atoi(sum);
                continue;
            case 9:
                month[8] += atoi(sum);
                continue;
            case 10:
                month[9] += atoi(sum);
                continue;
            case 11:
                month[10] += atoi(sum);
                continue;
            case 12:
                month[11] += atoi(sum);
                continue;
        }
    }
    fprintf(f2,"Прибыль по месяцам\n");
    for(int i = 0; i < 12; i++){
        fprintf(f2, "%s 2020 %d\n", months[i], month[i]);
        summ += month[i];
    }
    fprintf(f2, "Всего: %d", summ);
    fclose(f1);
    fclose(f2);

    return 0;
}
