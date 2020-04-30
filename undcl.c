#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAXTOKEN 100

enum { NAME, PARENS, BRACKETS };

void dcl(void);
void dirdcl(void);

int gettoken(void);
int tokentype;
char token[MAXTOKEN];
char name[MAXTOKEN];
char datatype[MAXTOKEN];
char out[1000];

#define BUFSIZE 100
static char buf[BUFSIZE];
int bufp = 0;

int main() {
	int type;
	int lasttype = NULL;
	char temp[MAXTOKEN];

	while (gettoken() != EOF) {
		strcpy(out, token);
		while ((type = gettoken()) != '\n')
			if (type == PARENS || type == BRACKETS) {
				if (lasttype == '*') {
					sprintf(temp, "(%s)", out);
					strcpy(out, temp);
				}
				strcat(out, token);
				lasttype = type;
			}
			else if (type == '*') {
				lasttype = type;
				sprintf(temp, "*%s", out);
				strcpy(out, temp);
			}
			else if (type == NAME) {
				lasttype = type;
				sprintf(temp, "%s %s", token, out);
				strcpy(out, temp);
			}
			else
				printf("invalid input at %s\n", token);
		printf("%s\n", out);
	}
	return 0;
}

int gettoken(void) {
	int c, getch(void);
	void ungetch(int);
	char* p = token;

	while ((c = getch()) == ' ' || c == '\t')
		;
	if (c == '(') {
		if ((c = getch()) == ')') {
			strcpy(token, "()");
			return tokentype = PARENS;
		}
		else {
			ungetch(c);
			return tokentype = '(';
		}
	}
	else if (c == '[') {
		for (*p++ = c; (*p++ = getch()) != ']'; )
			;
		*p = '\0';
		return tokentype = BRACKETS;
	}
	else if (isalpha(c)) {
		for (*p++ = c; isalnum(c = getch()); )
			*p++ = c;
		*p = '\0';
		ungetch(c);
		return tokentype = NAME;
	}
	else
		return tokentype = c;
}

void dcl(void) {
	int ns;

	for (ns = 0; gettoken() == '*';)
		ns++;
	dirdcl();
	while (ns-- > 0)
		strcat(out, " pointer to");
}

void dirdcl(void) {
	int type;

	if (tokentype == '(') {
		dcl();
		if (tokentype != ')')
			printf("error: missing )\n");
	}
	else if (tokentype == NAME)
		strcpy(name, token);
	else
		printf("error: expected name or (dcl)\n");
	while ((type = gettoken()) == PARENS || type == BRACKETS)
		if (type == PARENS)
			strcat(out, " function returning");
		else {
			strcat(out, " array");
			strcat(out, token);
			strcat(out, " of");
		}
}

int getch() {
	return (bufp > 0) ? buf[--bufp] : getchar();
}

void ungetch(int c) {
	if (bufp >= BUFSIZE)
		printf("Too much characters in stack\n");
	else
		buf[bufp++] = c;
}