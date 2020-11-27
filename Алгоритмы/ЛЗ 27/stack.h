#ifndef __STACK__
#define __STACK__
#define LEN 100

struct Stack
{
        int len_stack_num;
        int len_stack;
        int stack_numbers[LEN];
        float stack[LEN];
};

void push(struct Stack *stack, float elem);
void pushStackNumbers(struct Stack *stack, int elem);

#endif
