#include <iostream>

struct Spisok{
    int Elem;
    Spisok *Next;
};

void create_stack(Spisok *&L1)
{
    Spisok *x;
    char sym;
    x = NULL;
    do{
        L1 = new Spisok;
        printf("Enter the information part of the list link "); //¬ведите информационную часть звена списка
        scanf("%d", &L1 -> Elem);
        L1 -> Next = x;
        x = L1;
        printf("Will enter more (y/n)? "); //Ѕудете вводить ещЄ
        sym = getchar();
    }while ((sym == 'y') || (sym == 'Y'));
}

void print_spisok(Spisok *L1)
{
    Spisok *p;
    p = L1;
    while (p != NULL)
    {
        printf("%d ", p -> Elem);
        p = p -> Next;
    }
    printf("\n");
}

void search(Spisok *L1, int E1)
{
    Spisok *p;
    bool flag;
    p = L1;
    flag = false;
    while ((p != NULL) && !flag)
    {
        if (p -> Elem == E1)
            flag = true;
        else p = p -> Next;
        if (flag)
            printf("Element %d found in list\n", E1);
        else
            printf("Element %d not found in list\n", E1);
    }
}

int main()
{
    Spisok *L = NULL;
    int E;
    create_stack(L);
    printf("Source list\n");
    print_spisok(L);
    printf("Enter the item you are looking for ");
    scanf("%d", &E);
    search(L, E);
    getchar();
    return 0;
}
