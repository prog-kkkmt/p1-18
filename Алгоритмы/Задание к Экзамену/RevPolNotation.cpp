#include <iostream>
#include <sstream>
#include <stack>
#include <string>
#include <cmath>

//12+4*3+

class Calculator
{
public:
	std::string ExprToRPN(std::string Expr)
	{
		size_t priority;
		std::string current = "";
		std::stack <char> stack;

		for (int i = 0; i < Expr.length(); i++)
		{
			priority = _GetPriority(Expr[i]);

			if (priority == 0)	current += Expr[i];

			if (priority == 1)	stack.push(Expr[i]);

			if (priority > 1)
			{
				if (current[current.length() - 1] != ' ') current += ' ';

				while (!(stack.empty()))
				{
					if (_GetPriority(stack.top()) >= priority)
					{
						current += stack.top();
						stack.pop();	
					}
					
					else
						break;
				}

				stack.push(Expr[i]);
			}

			if (priority == -1)
			{
				stack.pop();

				while (_GetPriority(stack.top()) != 1)
				{
					current += stack.top();
					stack.pop();
				}
				
				stack.pop();			//	delete character '(' .
			}
		}

		while (!(stack.empty()))
		{
			current += stack.top();
			stack.pop();
		}

		return current;
	}

	double RPNtoAnswer(std::string RPN)
	{
		std::stack <double> st4ck;

		bool isNum = false;

		for (int i = 0; i < RPN.length(); i++)
		{
			int prior = _GetPriority(RPN[i]);

			if (RPN[i] == ' ') continue;

			if (prior == 0)
			{
				//int value = RPN[i] - '0';			//	main	.
				double value = 0;
				
				int afterDot = 1;

				if (RPN[i] == '0')
				{
					while (RPN[i] == '0')
					{
						++afterDot;
						++i;
					}
				}

				for (i; RPN[i] != ' ' && _GetPriority(RPN[i]) == 0 && i < RPN.length(); i++)
				{
					value += RPN[i] - '0';
					std::cout << "----------------------"	<< std::endl;
					std::cout << "value: " << value			<< std::endl;
					value *= 10;
				}
				
				value /= 10;

				if (afterDot > 1)
				{
					while (afterDot != 0)
					{
						value /= 10;
						--afterDot;
					}
				}

				std::cout << "value: " << value << " push" << std::endl;

				st4ck.push(double(value));
			}

			if (prior > 1)
			{
				double a = double(st4ck.top());
				st4ck.pop();

				double b = double(st4ck.top());
				st4ck.pop();

				if (RPN[i] == '+') st4ck.push(double(b + a));
				if (RPN[i] == '-') st4ck.push(double(b - a));
				if (RPN[i] == '*') st4ck.push(double(b * a));
				if (RPN[i] == '/')
				{
					if (a != 0)
						st4ck.push(double(b / a));
					else
					{
						std::cout << "Exception! Devisior by zero!" << std::endl;
						return 0;
					}
				}
				if (RPN[i] == '.' || RPN[i] == ',')
				{
					while (a > 1)
					{
						a /= 10;
					}

					std::cout << a << ": a" << std::endl;

					std::cout << b << ": b" << std::endl;

					std::cout << "value: " << b + a << " push" << std::endl;

					st4ck.push(double(b + a));
				}
			}
		}

		std::cout << std::endl;

		return st4ck.top();
	}

private:
	size_t _GetPriority(char ch)
	{
		if (ch == '*' || ch == '/')		return 3;
		if (ch == '-' || ch == '+')		return 2;
		if (ch == '(')					return 1;
		if (ch == ')')					return -1;
		
		if (ch >= 48 && ch <= 57)		return 0;
	}
};

int main()
{
	setlocale(LC_ALL, "ru");

	Calculator clc;

	std::string str = clc.ExprToRPN("(1,001/(2 - 6 + 5.5)*(9 + 1) / 5) / 10");	//	7 2 7 - 5 +*

	std::cout << str << std::endl;

	std::cout << "Answer : " << clc.RPNtoAnswer(clc.ExprToRPN("(1,001/(2 - 6 + 5.5)*(9 + 1) / 5) / 10")) << std::endl;

	return 0;
}
