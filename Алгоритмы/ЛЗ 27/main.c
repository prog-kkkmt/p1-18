#include <stdio.h>
#include "stack.h"
#define LEN 100

int main()
{
	int n, i, j, nc = 0, number;
        float diametor, diam_for_compaz1, diam_for_compaz2;
	struct Stack stack[LEN];
	stack->len_stack = 0;
	stack->len_stack_num = 0;
	FILE *box1 = fopen("box1.txt", "r");
	FILE *box2 = fopen("box2.txt", "w");
	FILE *magazine = fopen("magazine.txt", "w");
	
	FILE *vibor = fopen("vibor.txt", "r");
	fscanf(vibor, "%f %f", &diam_for_compaz1, &diam_for_compaz2);
	fclose(vibor);	
	fscanf(box1, "%d", &n);
	for (i = 0; i < n; ++i)
	{
		fscanf(box1, "%d %f", &number, &diametor);
		//printf("%d %f; ", number, diametor);
		for (j = 0; j < n; ++j)
		{
			if (diametor == *stack[j].stack)
			{
				++nc;
				break;
			}
		}
		if (nc > 0){
			nc = 0;
		}
		else if (diametor == diam_for_compaz1 || diametor == diam_for_compaz2)
		{
			push(stack->stack, diametor);
			pushStackNumbers(stack->stack_numbers, number);
		}
		else
		{
			nc = 0;
			fprintf(box2, "%d, %.2f; ", number, diametor);
		}
	}
	printf("%d %d", stack->len_stack, stack->len_stack_num);
	FILE *gilza = fopen("gilza.txt", "w");
	for (i = stack->len_stack; i > 0; --i)
	{
		fprintf(gilza, "%d, %.2f; ", *stack[i].stack_numbers, *stack[i].stack);		
	}
	fclose(box1);
	fclose(box2);
	fclose(magazine);
	return 0;
}
