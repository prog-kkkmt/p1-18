#include <stdio.h>
#include "stack.h"
#define LEN 100

//struct Stack stack[LEN];

void push(struct Stack *stack, float elem)
{
	if (stack->len_stack < LEN)
		stack->stack[stack->len_stack++] = elem;
	else
		printf("Error: stack full\n");
}

void pushStackNumbers(struct Stack *stack, int elem)
{
        if (stack->len_stack_num < LEN)
                stack->stack_numbers[stack->len_stack_num++] = elem;
        else
                printf("Error: stack full\n");
}

