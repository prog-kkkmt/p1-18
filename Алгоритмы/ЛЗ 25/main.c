#include "fstack.h"
#include <stdio.h>

int main()
{
	//Task 1
	int i;
	struct dataForStack Stack[LEN];
	for (i = 0; i < 5; ++i)
	{
		scanf("%d", Stack[i].stack);
		push(*Stack[i].stack);
		++(Stack->len_stack);
	}
	for (i = Stack->len_stack - 1; i >= 0; --i)
	{
		printf("%d ", *Stack[i].stack);
	}
	printf("\n");

	//Task 2
	clearStack();
	Stack->len_stack = 0;
	int num1, num2, operation, result = 0;
	scanf("%d %d %d", &num1, &num2, &operation);
	setOfOpiration(num1, operation, result); 
	++Stack->len_stack;
	while (Stack->len_stack <= 2)
	{
		scanf("%d %d", &num1, &operation);
		setOfOpiration(num1, operation, result);
		++Stack->len_stack;
	}
	//printStack(Stack->stack, Stack->len_stack);
	printStack();
	return 0;
}
