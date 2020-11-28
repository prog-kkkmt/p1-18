#include <stdio.h>
#include "stack.h"
#define LEN 100

void push(Stack *stack, float elem) //добавляем элемент в стек
{
	stack->stack[stack->len_stack] = elem;
	stack->len_stack++;
}

void pushStackNumbers(Stack *stack, int elem) //добавляем номер элемета в стек
{
	stack->stack_numbers[stack->len_stack_num] = elem;
	stack->len_stack_num++;
}

void init(Stack *stack) // инициализируем длины стеков для того чтобы в дальнейшем считать количество эелементов стека
{
	stack->len_stack_num = 0;
	stack->len_stack = 0;
}
