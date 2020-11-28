#ifndef __STACK__
#define __STACK__
#define LEN 100

typedef struct
{
        float stack[LEN];
	int len_stack;
	int stack_numbers[LEN];
        int len_stack_num;
} Stack;

void push(Stack *stack, float elem);
void pushStackNumbers(Stack *stack, int elem);
void init(Stack *stack);

#endif
