#include <stdio.h> 

unsigned long int next = 1;

int mystrlen(char s[]);
int myatoi(char s[]);
int myhtoi(char s[]);
int rand(void);
void srand(unsigned int seed);
int lower(char c);

main() {
	char s[4];
	s[0] = getchar();
	s[1] = getchar();
	s[2] = getchar();
	s[3] = getchar();
	printf("%d %d %c\n", mystrlen(s), myhtoi(s), lower(s[0]));
	printf("%d\n", rand());
	srand(2);
	printf("%d", rand());
}

int mystrlen(char s[]) {
	int i = 0;

	while (s[i] != '\0')
		i++;
	return i;
}

int myatoi(char s[]) {
	int i, n, sign;

	for (i = 0; isspace(s[i]); i++);
	
	sign = (s[i] == '-') ? -1 : 1;
	if (s[i] == '+' || s[i] == '-')
		i++;


	for (n = 0; isdigit(s[i]); i++)
		n = 10 * n + (s[i] - '0');

	return sign * n;
}

int myhtoi(char s[]) {
	int i = 0, n = 0;

	if (s[i] == '0') {
		i++;
		if (s[i] == 'x' || s[i] == 'X')
			i++;
	}

	for (; (s[i] >= '0' && s[i] <= '9') || (lower(s[i]) >= 'a' && lower(s[i]) <= 'f'); i++) {
		if (s[i] >= '0' && s[i] <= '9')
			n = 16 * n + (s[i] - '0');
		else
			n = 16 * n + (lower(s[i]) - 'a' + 10);
	}

	return n;
}

int lower(char c) {
	return (c >= 'A' && c <= 'Z') ? (c + 'a' - 'A') : c ;
}

int rand(void) {
	next = next * 1103515245 + 12345;
	return (unsigned int)(next / 65536) % 32768;
}

void srand(unsigned int seed) {
	next = seed;
}