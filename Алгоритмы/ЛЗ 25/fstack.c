#include <stdio.h>
#include "fstack.h"
#define LEN 100

//int stack[LEN]; 
//int count_elem = 0;

struct dataForStack Stack;

int pop(void)
{
	if (Stack.len_stack > 0)
		return Stack.stack[--Stack.len_stack];
	else
	{
		printf("Error: stack full\n");
		return 0;
	}
}

void push(int elem)
{
	if (Stack.len_stack < LEN)
		Stack.stack[Stack.len_stack++] = elem;
	else 
		printf("Error: stack full\n");
}

void clearStack()
{
	for (;Stack.len_stack >= 0; --Stack.len_stack)
		pop();
}

void printStack()
{
	for (int i = 0; i <= Stack.len_stack; ++i) //--count_elem)
		printf("%d ", Stack.stack[i]);
	printf("\n");
}

void setOfOpiration(int num, int operation, int result)
{
	switch (operation)
	{
		case -1: result += num; push(1); break;
		case -2: result *= num; push(2); break;
		case -3: result -= num; push(3); break;
		case -4: result /= num; push(4); break;
	}
}

