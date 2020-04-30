#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

#define NUMERIC 1
#define DECR 2
#define FOLD 4
#define DIR 8

#define MAXLINES 5000
char* lineptr[MAXLINES];

int readlines(char* lineptr[], int nlines);
void writelines(char* lineptr[], int nlines, int decr);

void qsort(void* lineptr[], int left, int right,
	int (*comp)(void*, void*));
int numcmp(char*, char*);
int charcmp(char*, char*);

#define ALLOCSIZE 10000
static char allocbuf[ALLOCSIZE];
static char* allocp = allocbuf;

static char option = 0;
int main(int argc, char* argv[]) {
	int nlines, i;
	int c, rc = 0;
	while (--argc > 0 && (*++argv)[0] == '-')
		while (c = *++argv[0])
			switch (c) {
			case 'n':
				option |= NUMERIC;
				break;
			case 'r':
				option |= DECR;
				break;
			case 'f':
				option |= FOLD;
				break;
			case 'd':
				option |= DIR;
				break;
			default:
				printf("illegal key %c\n", c);
				argc = 1;
				rc = -1;
				break;
			}

	if (argc)
		printf("sort -nr\n");
	else
		if ((nlines = readlines(lineptr, MAXLINES)) >= 0) {
			if (option & NUMERIC)
				qsort((void**)lineptr, 0, nlines - 1,
				(int (*)(void*, void*))numcmp);
			else 
				qsort((void**)lineptr, 0, nlines - 1,
				(int (*)(void*, void*))charcmp);
			writelines(lineptr, nlines, option & DECR);
		}
		else {
			printf("too big line\n");
			rc = -1;
		}
	return rc;
}


int getline(char* line, int lim);
void mystrncpy(char* destptr, char* srcptr, int n);
char* alloc(int);
int readlines(char* lineptr[], int maxlines) {
	int len, nlines;
	char* p, line[MAXLINES];

	nlines = 0;
	while ((len = getline(line, MAXLINES)) > 0)
		if (nlines >= maxlines || (p = alloc(len + 1)) == NULL)
			return -1;
		else {
			line[len] = '\0'; // delete '\n'
			mystrncpy(p, line, len);
			lineptr[nlines++] = p;
		}
	return nlines;
}

char* alloc(int n) {
	if (allocbuf + ALLOCSIZE - allocp >= n) {
		allocp += n;
		return allocp - n;
	}
	else
		return 0;
}


void mystrncpy(char* s, char* t, int n) {
	while (*t && n-- > 0)
		*s++ = *t++;
	while (n-- > 0)
		*s++ = '\0';
}

void writelines(char* lineptr[], int nlines, int decr) {
	int i;

	if (decr)
		for (i = nlines - 1; i >= 0; i--)
			printf("%s\n", lineptr[i]);
	else
		for (i = 0; i < nlines; i++)
			printf("%s\n", lineptr[i]);
}

int getline(char* s, int lim) {
	int i = 0;
	while (--lim > 0 && (*s = getchar()) != EOF && *s++ != '\n')
		i++;
	*s = '\0';
	return i;
}

void qsort(void* v[], int left, int right,
	int (*comp)(void*, void*)) {
	int i, last;
	void swap(void* v[], int i, int j);

	if (left >= right)
		return;
	swap(v, left, (left + right) / 2);
	last = left;
	for (i = left + 1; i <= right; i++)
		if ((*comp)(v[i], v[left]) < 0)
			swap(v, ++last, i);
	swap(v, last, left);
	qsort(v, left, last - 1, comp);
	qsort(v, last + 1, right, comp);
}

int numcmp(char* s1, char* s2) {
	double v1, v2;

	v1 = atof(s1);
	v2 = atof(s2);
	if (v1 < v2)
		return -1;
	else if (v1 > v2)
		return 1;
	else
		return 0;
}

int charcmp(char* s1, char* s2) {
	int a, b;
	int fold = (option & FOLD) ? 1 : 0;
	int dir = (option & DIR) ? 1 : 0;

	do {
		if (dir) {
			while (!isalnum(*s1) && *s1 != ' ' && *s1 != '\0')
				s1++;
			while (!isalnum(*s2) && *s2 != ' ' && *s2 != '\0')
				s2++;
		}
		a = fold ? tolower(*s1) : *s1;
		s1++;
		b = fold ? tolower(*s2) : *s2;
		s2++;
		if (a == b && a == '\0')
			return 0;
	} while (a == b);
	return a - b;
}

void swap(void *v[], int i, int j) {
	void* temp;

	temp = v[i];
	v[i] = v[j];
	v[j] = temp;
}