#include <stdio.h> 
#include <string.h>

#define MAXLINES 5000
#define MAXLEN 1000
#define ALLOCSIZE 10000

char* lineptr[MAXLINES];

void mystrncpy(char* destptr, char* srcptr, int n);
int readlines(char* lineptr[], int nlines);
void writelines(char* lineptr[], int nlines);
void qsort(char* lineptr[], int left, int right);

static char allocbuf[ALLOCSIZE];
static char* allocp = allocbuf;

main() {
	
	int nlines;

	if ((nlines = readlines(lineptr, MAXLINES)) >= 0) {
		qsort(lineptr, 0, nlines - 1);
		writelines(lineptr, nlines);
		return 0;
	}
	else {
		printf("error: input too big to sort\n");
		return 1;
	}
}

int getline(char*, int);
char* alloc(int);

int readlines(char* lineptr[], int maxlines) {
	int len, nlines;
	char* p, line[MAXLEN];

	nlines = 0;
	while ((len = getline(line, MAXLEN)) > 0)
		if (nlines >= maxlines || (p = alloc(len+1)) == NULL)
			return -1;
		else {
			line[len] = '\0'; // delete '\n'
			mystrncpy(p, line, len);
			lineptr[nlines++] = p;
		}
	return nlines;
}

void writelines(char* lineptr[], int nlines) {
	int i;

	for (i = 0; i < nlines; i++)
		printf("%s\n", lineptr[i]);
}

void qsort(char* v[], int left, int right) {
	int i, last;
	void swap(char* v[], int i, int j);

	if (left >= right)
		return;
	swap(v, left, (left + right) / 2);
	last = left;
	for (i = left + 1; i <= right; i++)
		if (strcmp(v[i], v[left]) < 0)
			swap(v, i, ++last);
	swap(v, left, last);
	qsort(v, left, last - 1);
	qsort(v, last + 1, right);
}

void swap(char* v[], int i, int j) {
	char * tmp = v[i];
	v[i] = v[j];
	v[j] = tmp;
}

char* alloc(int n) {
	if (allocbuf + ALLOCSIZE - allocp >= n) {
		allocp += n;
		return allocp - n;
	}
	else
		return 0;
}

int getline(char* s, int lim) {
	int i = 0;
	while (--lim > 0 && (*s = getchar()) != EOF && *s++ != '\n')
		i++;
	*s = '\0';
	return i;
}

void mystrncpy(char* s, char* t, int n) {
	while (*t && n-- > 0)
		*s++ = *t++;
	while (n-- > 0)
		*s++ = '\0';
}