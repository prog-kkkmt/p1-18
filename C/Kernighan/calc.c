#include <stdio.h> 
#include <ctype.h>
#include <string.h>
#include <math.h>

#define MAXOP 100 // maximum legnth of operand
#define NUMBER '0' // signal of number
#define BUFSIZE 100
#define MAXVAL 100
#define NAME 'n'
#define STOP 's'

int sp = 0;
double val[MAXVAL];

int buf[BUFSIZE];
int bufp = 0;

static int lastc;

int getline(char line[], int lim);
int getop(char s[]);
void push(double);
void dplcate(void);
void tswap(void);
void clear(void);
double pop(void);
double spop(void);
int getch(void);
void ungetch(int c);
void ungets(char s[]);
void mathfunc(char s[]);

main() {
	int type;
	double op2, atof(char s[]);
	char s[MAXOP];

	while ((type = getop(s)) != EOF) {
		switch (type) {
		case NUMBER:
			push(atof(s));
			break;
		case NAME:
			mathfunc(s);
			break;
		case '+':
			push(pop() + pop());
			break;
		case '*':
			push(pop() * pop());
			break;
		case '-':
			op2 = pop();
			push(pop() - op2);
			break;
		case '/':
			op2 = pop();
			if (op2 != 0.0)
				push(pop() / op2);
			else
				printf("Error: zero division.\n");
			break;
		case '%':
			op2 = pop();
			if (op2 != 0.0)
				push((double)((int)pop() % (int)op2));
			else
				printf("Error: zero division(%).\n");
			break;
		case '\n':
			printf("\t%.8g\n", pop());
			break;
		default:
			printf("Error: unknown command %s\n", s);
			break;
		}
	}
}

void mathfunc(char s[]) {
	double op2;
	if (strcmp(s, "sin") == 0)
		push(sin(pop()));
	else if (strcmp(s, "cos") == 0)
		push(cos(pop()));
	else if (strcmp(s, "exp") == 0)
		push(exp(pop()));
	else if (strcmp(s, "pow") == 0) {
		op2 = pop();
		push(pow(pop(), op2));
	}
	else
		printf("Error: no such command %s", s);
}

int getop(char s[]) {
	int i, c;

	while ((s[0] = c = getch()) == ' ' || c == '\t') // skip spaces
		;

	i = 0;
	if (islower(c)) {
		while (islower(s[++i] = c = getch()))
			;
		s[i] = '\0';
		if (c != EOF)
			ungetch(c);
		if (strlen(s) > 1)
			return NAME;
		else
			return c;
	}

	s[1] = '\0';
	if (!isdigit(c) && c != '.')
		if (c == '-') { // check negative numbers
			if (isdigit((c = getch())) || c == '.') {
				s[++i] = c;
			}
			else {
				if (c != EOF)
					ungetch(c);
				return '-';
			}
		}
		else
			return c; // not a number


	if (isdigit(c))
		while (isdigit(s[++i] = c = getch()))
			;
	if (c == '.')
		while (isdigit(s[++i] = c = getch()))
			;
	s[i] = '\0';
	if (c != EOF)
		ungetch(c);
	return NUMBER;
}


int getline(char s[], int lim) {
	int c, i = 0;

	while (--lim > 0 && (c = getchar()) != EOF && c != '\n')
		s[i++] = c;
	if (c == '\n')
		s[i++] = c;
	s[i] = '\0';
	return i;
}

double atof(char s[]) {
	int i, sign, expsign;
	double val, power, exponent;

	i = 0;
	sign = (s[i] == '-') ? -1 : 1;
	if (s[i] == '-' || s[i] == '+')
		i++;
	for (val = 0.0; isdigit(s[i]); i++)
		val = 10.0 * val + (s[i] - '0');
	if (s[i] == '.')
		i++;
	for (power = 1.0; isdigit(s[i]); i++) {
		val = 10.0 * val + (s[i] - '0');
		power *= 10;
	}
	val = sign * val / power;
	if (s[i] == 'e' || s[i] == 'E') {
		expsign = (s[++i] == '-') ? -1 : 1;
		if (s[i] == '-' || s[i] == '+')
			i++;
		for (exponent = 0; isdigit(s[i]); i++)
			exponent = exponent * 10.0 + (s[i] - '0');
		if (expsign == 1)
			while (exponent-- > 0)
				val *= 10;
		else
			while (exponent-- > 0)
				val /= 10;
	}
	return val;
}

void push(double f) {
	if (sp >= MAXVAL)
		printf("Error: stack is full. Can't push %g\n", f);
	else
		val[sp++] = f;
}

double pop(void) {
	if (sp > 0)
		return val[--sp];
	else {
		printf("Error: stack empty.\n");
		return 0.0;
	}
}

double spop(void) {
	if (sp > 0) {
		return val[sp - 1];
	}
	else {
		printf("Error: stack empty.\n");
		return 0.0;
	}
}

void dplcate(void) {
	push(spop());
}

void tswap(void) {
	double a = pop();
	double b = pop();
	push(a);
	push(b);
}

void clear(void) {
	sp = 0;
}

int getch(void) {
	int c;
	if (lastc) {
		c = lastc;
		lastc = 0;
	}
	else
		c = getchar();
	if (c == EOF)
		lastc = -1;
	return c;
}

void ungetch(int c){
	if (!lastc)
		lastc = c;
	else
		printf("Error: lastc is non empty");
}

void ungets(char s[]) {
	int len = strlen(s);
	while (len > 0)
		ungetch(s[--len]);
}
