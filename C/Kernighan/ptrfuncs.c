#include <stdio.h> 
#include <ctype.h>
#include <string.h>

#define BUFSIZE 100

int getch(void);
void ungetch(int);
char buf[BUFSIZE];
int bufp = 0;

int getint(int* pn);
int getfloat(float* pn);
int mystrend(char* s, char* t);
void mystrcat(char* s, char* t);
void mystrncpy(char* destptr, char* srcptr, int n);
void mystrncat(char* destptr, char* srcptr, int n);
int  mystrncmp(char* s1, char* s2, int n);

int getline(char* s, int lim);
int atoi(char* s);

main() {
	char s[100];
	getline(s, 100);
	char t[] = "aseqwe";
	printf("%d", atoi(s));
}

int getint(int* pn) {
	int c, d, sign;
	while (isspace(c = getch()))
		;
	if (!isdigit(c) && c != EOF && c != '+' && c != '-') {
		ungetch(c);
		return 0;
	}
	sign = (c == '-') ? -1 : 1;
	if (c == '-' || c == '+') {
	    d = c;
		if (!isdigit(c = getch())) {
			if (c != EOF)
				ungetch(c);
			ungetch(d);
			return d;
		}
	}
	for (*pn = 0; isdigit(c); c = getch())
		*pn = 10 * *pn + (c - '0');
	*pn *= sign;
	if (c != EOF)
		ungetch(c);
	return c;
}

int getfloat(float* pn) {
	int c, d, sign, power;
	float val;
	while (isspace(c = getch()));
	if (!isdigit(c) && c != EOF && c != '+' && c != '-' && c != '.') {
		ungetch(c);
		return 0;
	}
	sign = (c == '-') ? -1 : 1;
	if (c == '+' || c == '-') {
		d = c;
		if (!isdigit(c = getch())) {
			if (c != EOF)
				ungetch(c);
			ungetch(d);
			return d;
		}
	}
	for (*pn = 0.0; isdigit(c); c = getch())
		*pn = 10.0 * *pn + (c - '0');
	if (c == '.') {
		c = getch();
	}
	for (power = 1; isdigit(c); c = getch()) {
		*pn = 10.0 * *pn + (c - '0');
		power *= 10;
	}
	*pn = sign * *pn / power;
	if (c != EOF)
		ungetch(c);
	return c;
}

int mystrend(char* s, char* t) {
	int i;
	int len = 0;
	while (*s)
		s++;
	while (*t)
		t++, len++;
	for (i = 0; i <= len; i++)
		if (*s-- != *t--)
			return 0;
	return 1;
}

void mystrcat(char* s, char* t) {
	while (*s)
		s++;
	while (*s++ = *t++);
}

void mystrncpy(char* s, char* t, int n) {
	while (*t && n-- > 0)
		*s++ = *t++;
	while (n-- > 0)
		*s++ = '\0';
}

void mystrncat(char* s, char* t, int n) {
	while (*s)
		s++;
	while (*t && n-- > 0)
		*s++ = *t++;
	while (n-- > 0)
		*s++ = '\0';
}

int mystrncmp(char* s, char* t, int n) {
	for (; *s == *t; s++, t++)
		if (*s == '\0' || --n <= 0)
			return 0;
	return *s - *t;
}

int getch(void) {
	return (bufp > 0) ? buf[--bufp] : getchar();
}

void ungetch(int c) {
	if (bufp > BUFSIZE)
		printf("Error in ungetch: too many characters.\n");
	else
		buf[bufp++] = c;
}

int getline(char* s, int lim) {
	while (--lim > 0 && (*s = getchar()) != EOF && *s++ != '\n');
	if (*s == EOF)
		*s = '\0';
	else 
		*++s = '\0';
}

int atoi(char* s) {
	int sign, n;
	while (isspace(*s))
		s++;
	sign = (*s == '-') ? -1 : 1;

	if (*s == '-' || *s == '+')
		s++;

	for (n = 0; isdigit(*s); s++)
		n = 10 * n + (*s - '0');
	n *= sign;

	return n;
}