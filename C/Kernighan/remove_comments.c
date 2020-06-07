#include <stdio.h> // test comment

//test comment
/**/
/*
	test comment
*/

main() {
	int c, lastc;

	while ((c = getchar()) != EOF) {
		if (c == '/') {
			lastc = c;
			if ((c = getchar()) == lastc) {
				while ((c = getchar()) != '\n');
				putchar(c);
			}
			else if (c == '*') {
				lastc = getchar();
				while (((c = getchar()) != '/' || lastc != '*') && c != EOF)
					lastc = c;
			}
			else {
				putchar(lastc);
				putchar(c);
			}
		}
		else if (c == '\'') {
			putchar(c);
			while ((c = getchar()) != EOF && c != '\'')
				putchar(c);
			putchar(c);
		}
		else if (c == '\"') {
			putchar(c);
			while ((c = getchar()) != EOF && c != '\"')
				putchar(c);
			putchar(c);
		}
		else	
			putchar(c);
	}
}

