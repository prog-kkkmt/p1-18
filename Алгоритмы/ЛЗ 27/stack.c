#include <stdio.h>
#include "stack.h"
#define LEN 100

//struct Stack stack[LEN];

void push(Stack *stack, float elem)
{
	stack->stack[stack->len_stack] = elem;
	stack->len_stack++;
}

void pushStackNumbers(Stack *stack, int elem)
{
	stack->stack_numbers[stack->len_stack_num] = elem;
	stack->len_stack_num++;
}

void init(Stack *stack)
{
	stack->len_stack_num = 0;
	stack->len_stack = 0;
}
