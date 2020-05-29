#include <iostream>

struct Spisok{
    int Elem;
    Spisok *Next;
};

void create_ochered(Spisok *&L1)
{
    Spisok *x, *pr;
    char sym;
    L1 = NULL;
    do{
        x = new Spisok;
        if (L1 == NULL)
            L1 = x;
        else pr -> Next = x;
        printf("Введите информационную часть звена списка ");
        scanf("%d", &x -> Elem);
        x -> Next == NULL;

        pr = x;
        printf("Будете вводить ещё (y/n)");
        sym = getchar();
    }while ((sym == 'y')||(sym == 'Y'));
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

int Max_Spisok(Spisok *L1)
{
    Spisok *p;
    int Max1;
    p = L1;
    Max1 = p -> Elem;

    while (p != NULL)
    {
        if (p -> Elem > Max1)
        {
            Max1 = p -> Elem;
            p = p -> Next;
        }
    }
    return Max1;
}

int main()
{
    Spisok *L = NULL;
    int max;
    create_ochered(L);
    printf("Исходный список\n");
    print_spisok(L);
    max = Max_Spisok(L);
    printf("Максимальный элемент списка = %d\n", max);
    getchar();
    return 0;
}
