#include <stdio.h>
#include "stack.h"
#define LEN 100

int main()
{
	int n, i, j, nc = 0, number;
    float diametor, diam_for_compaz1, diam_for_compaz2;
	Stack stack;
	Stack *st = &stack;
	init(st);
	FILE *box1 = fopen("box1.txt", "r");
	FILE *box2 = fopen("box2.txt", "w");
	FILE *vibor = fopen("vibor.txt", "w");
	FILE *gilza = fopen("gilza.txt", "w");

	FILE *magazine = fopen("magazine.txt", "r");
	fscanf(magazine, "%*d %f %*d %f", &diam_for_compaz1, &diam_for_compaz2);
	fclose(magazine);
	printf("%f %f\n", diam_for_compaz1, diam_for_compaz2);
	fscanf(box1, "%d", &n);
	for (i = 0; i < n; ++i)
	{
		fscanf(box1, "%d %f", &number, &diametor);
		for (j = 0; j < stack.len_stack; ++j)
		{
			if (diametor == stack.stack[j])
			{
				++nc;
				break;
			}
		}
		if (nc == 0 && (diametor >= diam_for_compaz1 && diametor <= diam_for_compaz2))
		{
			fprintf(vibor, "%d, %f; ", number, diametor);
		}

		if (diametor >= diam_for_compaz1 && diametor <= diam_for_compaz2)
		{
			push(st, diametor);
			pushStackNumbers(st, number);
			nc = 0;
		}
		else
		{
			nc = 0;
			fprintf(box2, "%d, %.2f; ", number, diametor);
		}
	}
	printf("%d %d", stack.len_stack, stack.len_stack_num);
	for (i = stack.len_stack; i >= 0; --i)
	{
		fprintf(gilza, "%d, %.2f; ", stack.stack_numbers[i], stack.stack[i]);
	}
	fclose(box1);
	fclose(box2);
	fclose(gilza);
	fclose(vibor);
	return 0;
}
