#include <stdio.h> 

void squeeze(char s1[], char s2[] );
void mystrcat(char s[], char t[]);
int getline(char line[], int maxline);
int any(char s1[], char s2[]);
unsigned getbits(unsigned x, int p, int n);
int bitcount(unsigned x);
unsigned invert(unsigned x, int p, int n);

main() {
	int a = getchar();
	printf("%c", lower(a));

}

void squeeze(char s1[], char s2[]) {
	int i, j, k, haschar = 0;

	for (i = j = 0; s1[i] != '\0'; i++) {
		for (k = 0; s2[k] != '\0'; k++) {
			if (s1[i] == s2[k])
				haschar = 1;
		}

		if (!haschar)
			s1[j++] = s1[i];

		haschar = 0;
	}
	s1[j] = '\0';
}

int any(char s[], char t[]) {
	int i, j;

	for (i = 0; s[i] != '\0'; i++)
		for (j = 0; t[j] != '\0'; j++)
			if (s[i] == t[j])
				return i;

	return -1;
}

void mystrcat(char s[], char t[]) {
	int i, j;
	i = j = 0;

	while (s[i] != '\0')
		i++;

	while ((s[i++] = t[j++]) != '\0');
}

int getline(char s[], int lim) {
	int c, i, j;

	j = 0;
	for (i = 0; (c = getchar()) != EOF && c != '\n'; i++)
		if (i < lim - 2) 
			s[j++] = c;
		
	if (c == '\n') {
		s[j++] = c;
		++i;
	}

	s[j] = '\0';
	return i;
}

int bitcount(unsigned x) {
	int i;

	for (i = 0; x != 0; x &= (x-1))
			i++;

	return i;
}

int lower(char c) {
	return (c >= 'A' && c <= 'Z') ? (c + 'a' - 'A') : c ;
}

unsigned getbits(unsigned x, int p, int n) {
	return (x >> (p + 1 - n)) & ~(~0 << n);
}

unsigned invert(unsigned x, int p, int n) {

}