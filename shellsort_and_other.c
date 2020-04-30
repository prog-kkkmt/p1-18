#include <stdio.h> 
#include <ctype.h>
#include <string.h>

#define abs(x) ((x) < 0 ? -(x): (x))

int binsearch(int x, int v[], int n);
int trim(char s[]);
void myshellsort(int v[], int n);
void expand(char s1[], char s2[]);
void reverse(char s[]);
void itoa(int n, char s[]);
void itob(int n, char s[], int b);

main() {
	int i;
	char s[50];
	char t[100];
	getline(s, 50);
	trim(s);
	printf("%s qw", s);

}

int binsearch(int x, int v[], int n) {
	int low, mid, high;

	low = 0;
	high = n - 1;
	while (low <= high) {
		mid = (low + high) / 2;
		if (x < v[mid])
			high = mid - 1;
		else if (x > v[mid])
			low = mid + 1;
		else
			return mid;
	}
	return -1;
}

int nbinsearch(int x, int v[], int n) {
	int low, mid, high;

	low = 0;
	high = n - 1;
	mid = (low + high) / 2;
	while (low <= high && x != v[mid]) {
		if (x < v[mid])
			high = mid - 1;
		else
			low = mid + 1;
		mid = (low + high) / 2;
	}

	if (v[mid] == x)
		return mid;
	else 
		return -1;
}

void myshellsort(int v[], int n) {
	int i, j, gap;

	for(gap = n/2; gap > 0; gap/= 2)
		for(i = gap; i < n; i++)
			for (j = i - gap; j >= 0 && v[j] > v[j + gap]; j -= gap) {
				int temp = v[j + gap];
				v[j + gap] = v[j];
				v[j] = temp;
			}
				
}

void expand(char s[], char t[]) {
	int i, j, k;

	for (i = 0, j = 0; s[i] != '\0'; i++)
		if (s[i+1] == '-') {
			i++;
			if (s[i - 1] <= s[i + 1]) {
				int from_char = s[i - 1];
				int to_char = s[i + 1];
				for (k = from_char; k <= to_char; k++)
					t[j++] = k;
				i++;
			}
		}
		else
			t[j++] = s[i];

	t[j] = '\0';
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

void reverse(char s[]) {
	int i, j, c;

	for (i = 0, j = strlen(s) - 1; i < j; i++, j--)
		c = s[i], s[i] = s[j], s[j] = c;
}

void itoa(int n, char s[]) {
	static int i;

	if (n / 10)
	 itoa(n / 10, s);
	else {
		i = 0;
		if (n < 0)
			s[i++] = '-';
	}
	s[i++] = abs(n) % 10 + '0';
	s[i] = '\0';
}

void itob(int n, char s[], int b) {
	int i = 0, j, sign;

	if ((sign = n) < 0)
		n = -n;

	do {
		j = n % b;
		s[i++] = (j <= 9) ? j + '0': j + 'A' - 10;
	} while ((n /= b) > 0);
	if (sign < 0)
		s[i++] = '-';
	s[i] = '\0';
	reverse(s);
}

int trim(char s[]) {
	int n;

	for (n = strlen(s) - 1; n >= 0; n--)
		if (s[n] != ' ' && s[n] != '\t' && s[n] != '\n')
			break;
	s[n + 1] = '\0';
	return n;
}