#include <stdio.h>

#define MAXLINE 1000
#define MINLINE 80

#define EMPTY 0
#define NONEMPTY 1

int getline(char line[], int maxline);
void copy(char from[], char to[]);
int strip(char line[]);
void reverse(char s[]);

main() {
	int len;
	int max = 0;
	char line[MAXLINE];
	char longest[MAXLINE];
	
	int result;
	while ((len = getline(line, MAXLINE)) != 0) {
		reverse(line);
		printf("%s", line);
	}
	
	
	return 0;
}

int getline(char s[], int lim) {
	int c, i, j;

	j = 0;
	for (i = 0; (c = getchar()) != EOF && c != '\n'; i++)
		if (i < lim - 2) {
			s[j] = c;
			j++;
		}
			

	if (c == '\n') {
		s[j] = c;
		++i;
		++j;
	}

	s[j] = '\0';
	return i;
}

void copy(char from[], char to[]) {
	int i;

	for (i = 0; (to[i] = from[i]) != '\0'; i++);
}

int strip(char s[]) {
	int i, begin, end;


	for (i = 0; s[i] == ' ' || s[i] == '\t'; i++);
	if (s[i + 1] == '\0')
		return EMPTY;

	begin = i;
	i++;

	while (s[i] != '\0')
		i++;
	end = i;

	for (i = end; s[i] == ' ' || s[i] == '\t'; i--);
	end = i;

	int j = 0;
	for (i = begin; i <= end; i++) {
		s[j] = s[i];
		j++;
	}
	
	j++;
	s[j] = '\0';

	return NONEMPTY;
} 

void reverse(char s[]) {
	int i, len;
	char tmp;

	for (i = 0; s[i] != '\n'; i++);
	len = i - 1;

	for (i = 0; i <= len / 2; i++) {
		tmp = s[i];
		s[i] = s[len];
		s[len] = tmp;
		len--;
	}
}