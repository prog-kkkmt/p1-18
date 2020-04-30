#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

#define MAXBUFF 100
int bufp = 0;
char buf[MAXBUFF];

int getch(void);
void ungetch(int c);
int getword(char*, int);
int comment(void);

typedef struct tnode tnode;
struct tnode {
	char* word;
	int count;
	tnode* left;
	tnode* right;
};

#define MAXWORD 100
tnode* addtree(tnode*, char*);
void treeprint(tnode*);
int getword(char*, int);

tnode* talloc(void);
char* _strdup(char*);

int main() {
	tnode* root;
	char word[MAXWORD];

	root = NULL;
	while (getword(word, MAXWORD) != EOF)
		if (isalpha(word[0]))
			root = addtree(root, word);
	treeprint(root);
	return 0;
}

tnode* addtree(tnode* p, char* w) {
	int cond;

	if (p == NULL) {
		p = talloc();
		p->word = _strdup(w);
		p->count = 1;
		p->left = p->right = NULL;
	}
	else if ((cond = strcmp(w, p->word)) == 0)
		p->count++;
	else if (cond < 0)
		p->left = addtree(p->left, w);
	else
		p->right = addtree(p->right, w);
	return p;
}

void treeprint(tnode* p) {
	if (p != NULL) {
		treeprint(p->left);
		printf("%4d %s\n", p->count, p->word);
		treeprint(p->right);
	}
}

tnode* talloc(void) {
	return (tnode*)malloc(sizeof(tnode));
}

char* _strdup(char* s) {
	char* p;

	p = (char*)malloc(strlen(s) + 1);
	if (p != NULL)
		strcpy(p, s);
	return p;
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