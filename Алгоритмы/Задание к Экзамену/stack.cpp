#include <iostream>

template <typename T>
class Stack
{
public:

    Stack()
    { // конструктор
        count = 0;// изначальный размер
    }
    ~Stack() {}// деструктор

    //если стек пуст - возвращаем false
    bool isEmpty()
    {
        return (count == 0);
    }

    //узнать размер стека
    int Capacity()
    {
        return count;
    }

    //положить элементы в стек
    void Push(T value)
    {
        Node* next = new Node(value);//создаем указатель на новый элемент
        if (count == 0)
        {
            this->topElement = next;    //если в стеке нет элементов, то верхний элемент стека будет новым элементом
        }

        else
        {
            next->prevElement = this->topElement;   // предыдущий элемент становится верхним элементом
            this->topElement = next;
        }

        count++;
    }

    //возвращаем верхний элемент стека
    
    T Top()
    {
        if (!isEmpty())
            return topElement->element;
        else
            std::cout << "The stack is empty!\t";
    }

    //удаляем верхний элемент стека

    void Pop()
    {
        if (!isEmpty())
        {
            //  Node* temp = topElement;

            topElement = topElement->prevElement;

            //  delete temp;
            count--;
        }

        else
        {
            std::cout << "The stack is empty!" << std::endl;
        }
    }

private:
    //структура элемента стека
    struct Node
    {
        Node* prevElement; // указатель на предыдущий элемент стека

        T element;

        Node() {};

        Node(T value)
        {
            element = value;
            prevElement = nullptr;
        }
    };

    Node* topElement = new Node();
    int count;// счетчик элементов стека

};

int main()
{
	Stack <int> stack;
	stack.Push(5);
	std::cout << "stack.PushBack(5)\tsize = " << stack.Capacity() << std::endl;
	stack.Push(10);
	std::cout << "stack.PushBack(10)\tsize = " << stack.Capacity() << std::endl;
	stack.Push(17);
	std::cout << "stack.PushBack(17)\tsize = " << stack.Capacity() << std::endl;
	stack.Pop();
    std::cout << "stack.PopBack()\t\tsize = " << stack.Capacity() << std::endl;
    stack.Pop();
    std::cout << "stack.PopBack()\t\tsize = " << stack.Capacity() << std::endl;
    stack.Pop();
	std::cout << "stack.PopBack()\t\tsize = " << stack.Capacity() << std::endl;
	std::cout << stack.Top() << std::endl;
	std::cout << stack.Capacity();

	return 0;
}

