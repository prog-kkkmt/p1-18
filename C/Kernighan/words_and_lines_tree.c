#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define MAXWORD 100

typedef struct dtree dtree;
typedef struct stree stree;

struct dtree {
	dtree* left;
	dtree* right;
	int value;
};

struct stree {
	stree* left;
	stree* right;
	char* word;
	dtree* linestree;
};

dtree* add_dtree(dtree* root, int value);
dtree* dalloc(void);
void print_dtree(dtree* root);

stree* add_stree(stree* root, char* word, int nline);
stree* salloc(void);
void print_stree(stree* root);

char* _strdup(char*);

int getword(char* word, int lim, int* nlines);

#define MAXBUFF 100
int bufp = 0;
char buf[MAXBUFF];

int getch(void);
void ungetch(int c);

int main() {
	int nlines = 0;
	char word[MAXWORD];

	stree* root = NULL;

	while (getword(word, MAXWORD, &nlines) != EOF)
		if (isalpha(word[0]))
			root = add_stree(root, word, nlines);
	print_stree(root);
}

dtree* add_dtree(dtree* p, int v) {
	if (p == NULL) {
		p = dalloc();
		p->value = v;
		p->left = p->right = NULL;
	}
	else if (p->value > v)
		p->left = add_dtree(p->left, v);
	else if (p->value < v)
		p->right = add_dtree(p->right, v);
	return p;
}

void print_dtree(dtree* p) {
	if (p != NULL) {
		print_dtree(p->left);
		printf("%d ", p->value);
		print_dtree(p->right);
	}
}

dtree* dalloc(void) {
	return (dtree*)malloc(sizeof(dtree));
}

stree* add_stree(stree* p, char* w, int n) {
	int cond;

	if (p == NULL) {
		p = salloc();
		p->word = _strdup(w);
		p->linestree = NULL;
		p->linestree = add_dtree(p->linestree, n);
		p->left = p->right = NULL;
	}
	else if ((cond = strcmp(p->word, w) == 0))
		p->linestree = add_dtree(p->linestree, n);
	else if (cond > 0)
		p->left = add_stree(p->left, w, n);
	else
		p->right = add_stree(p->right, w, n);

	return p;
}

void print_stree(stree* p) {
	if (p != NULL) {
		print_stree(p->left);
		printf("%s lines: ", p->word);
		print_dtree(p->linestree);
		printf("\n");
		print_stree(p->right);
	}
}

stree* salloc(void) {
	return (stree*)malloc(sizeof(stree));
}

char* _strdup(char* s) {
	char* p;

	p = (char*)malloc(strlen(s) + 1);
	if (p != NULL)
		strcpy(p, s);
	return p;
}

int getword(char* word, int lim, int* nlines) {
	int c;
	char* w = word;

	while ((c = getch()) == ' ' || c == '\t')
		;

	if (isalpha(c)) {
		*w++ = c;
		while (isalpha(c = getch()))
			*w++ = c;
		ungetch(c);
	}
	else if (c == '\n')
		(*nlines)++;

	*w = '\0';
	return c;
}

int getch(void) {
	return (bufp > 0) ? buf[--bufp] : getchar();
}

void ungetch(int c) {
	buf[bufp++] = c;
}