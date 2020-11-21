#ifndef __FSTACK__
#define __FSTACK__
#define LEN 100

struct dataForStack
{
        int stack[LEN];
	int len_stack;
};

int pop (void);
void push (int elem);
void clearStack();
void printStack();
void setOfOpiration(int num, int operation, int result);

#endif
