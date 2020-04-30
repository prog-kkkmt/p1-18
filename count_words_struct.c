#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <ctype.h>
#include <string.h>

struct key {
    char* word;
    int count;
};

struct key keytab[] = {
    "auto", 0,
    "char", 0,
    "default", 0,
    "int", 0,
    "struct", 0,
    "sizeof", 0,
    "soco", 0,
    "#define", 0,
    "//abc", 0,
    "_ww", 0,
    "\"qq\"", 0,
    "'q'", 0,
};

#define MAXWORD 100
#define NKEYS (sizeof keytab / sizeof keytab[0])

#define MAXBUFF 100
int bufp = 0;
char buf[MAXBUFF];

int getch(void);
void ungetch(int c);

int getword(char*, int);
int binsearch(char*, struct key*, int);
int comment(void);

void sqsort(char* arr[], int left, int right);
void swap(char* arr[], int i, int j);

main() {
    int n, i;
    char word[MAXWORD];

    sqsort(keytab, 0, NKEYS - 1);

    while (getword(word, MAXWORD) != EOF)
        if (isalpha(word[0]) || word[0] == '#' || word[0] == '_' || word[0] == '/' || word[0] == '\"' || word[0] == '\'')
            if ((n = binsearch(word, keytab, NKEYS)) >= 0)
                keytab[n].count++;
    for (n = 0; n < NKEYS; n++)
        if (keytab[n].count > 0)
            printf("%4d %s\n", keytab[n].count, keytab[n].word);
    return 0;
}

int binsearch(char* word, struct key tab[], int n) {
    int cond;
    int low, mid, high;

    low = 0;
    high = n - 1;
    while (low <= high) {
        mid = (low + high) / 2;
        if ((cond = strcmp(word, tab[mid].word)) > 0)
            low = mid + 1;
        else if (cond < 0)
            high = mid - 1;
        else
            return mid;
    }
    return -1;
}


int getword(char* word, int lim) {
    int c, d;
    char* w = word;

    while (isspace((c = getch())))
        ;
    if (c != EOF)
        *w++ = c;
    if (isalpha(c) || c == '_' || c == '#') {
        for (; --lim > 0; w++)
            if (!isalnum(*w = getch()) && *w != '_') {
                ungetch(*w);
                break;
            }
    }
    else if (c == '\'' || c == '"') {
        for (; --lim > 0; w++)
            if ((*w = getch()) == '\\')
                *++w = getch();
            else if (*w == c) {
                w++;
                break;
            }
            else if (*w == EOF)
                break;
    }
    else if (c == '/')
        if ((d = getch()) == '*')
            c = comment();
        else
            ungetch(d);
    *w = '\0';
    return c;
}

int comment(void) {
    int c;
    while ((c = getch()) != EOF) {
        if (c == '*')
            if ((c = getch()) == '/')
                break;
            else
                ungetch(c);
    }
    return c;
}

int getch(void) {
    return (bufp > 0) ? buf[--bufp] : getchar();
}

void ungetch(int c) {
    buf[bufp++] = c;
}

void sqsort(struct key arr[], int left, int right) {
    int i, last;

    if (left >= right)
        return;

    swap(arr, left, (left+right) / 2);
    last = left;
    for (i = left+1; i <= right; i++)
        if (strcmp(arr[left].word, arr[i].word) > 0)
            swap(arr, ++last, i);
    swap(arr, left, last);
    sqsort(arr, left, last-1);
    sqsort(arr, last + 1, right);
}

void swap(struct key arr[], int i, int j) {
    struct key tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
}