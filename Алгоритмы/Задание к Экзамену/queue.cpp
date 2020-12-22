#include <iostream>

template <typename T>

// At first - initiallisation new pointer's value, then assign last pointer to new pointer .

struct Queue
{
public:
	size_t size()
	{
		return capacity;
	}

	bool empty()
	{
		return capacity == 0;
	}

	void push(T value)
	{
		Element* newElem = new Element();

		newElem->value = value;

		if (empty())
		{
			first = newElem;

			newElem->prev = first;

			last = newElem;
		}

		else
		{
			newElem->prev = last;

			last = newElem;
		}

		capacity += 1;
	}

	void pop()
	{
		if (!empty())
		{
			if (capacity == 1)
			{
				last = first;
			}

			else
			{
				last = last->prev;
			}

			capacity -= 1;
		}
	}

	T front()
	{
		if (!(empty()))	return first->value;
	}

	T back()
	{
		if (!(empty()))	return last->value;
	}

private:
	struct Element
	{
		Element* prev;

		T value;

		Element()
		{

		}
	};

	Element* first = new Element();

	Element* last = new Element();

	size_t capacity = 0;
};

int main()
{
	Queue <int> q;

	q.push(5);

	q.pop();

	q.push(10);

	q.push(17);

	std::cout << q.front() << std::endl;

	std::cout << q.back() << std::endl;

	std::cout << q.size();

	return 0;
}
