/* Text4. Дан текстовый файл. Вывести количество содержащихся в нем символов и строк (маркеры концов строк EOLN
и конца файла EOF при подсчете количества символов не учитывать). */
/* М. Э. Абрамян. Электронный задачник по программированию. Решение: Гусятинер Л.Б., 10.04.2020 */
#include <stdio.h>
#include <string.h>
#define MAXLEN 200
int main()
{
	int c;
	int nchars = 0, nlines = 0;
	char fname[MAXLEN];
	fgets(fname, MAXLEN+1, stdin);
	int last = strlen(fname)-1;
	/* Всем хорош fgets, только \n может добавить к строке, но может и не добавить,
	в зависимости от MAXLEN :) */

	if (fname[last] == '\n')
        fname[last] = '\0';

	FILE *f = fopen(fname, "r");
	int i = 0;
	while ((c = fgetc(f)) != EOF) {
		nchars++;
		if (c == '\n')
			nlines++;
	}
	nchars -= nlines;
	fclose(f);
	printf("chars = %d, lines = %d\n", nchars, nlines);
	return 0;
}
