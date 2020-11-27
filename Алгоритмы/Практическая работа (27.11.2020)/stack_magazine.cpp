#include <iostream>
#include <stack>
#include <fstream>
#include <stdio.h>
#include <cmath>

class Patron
{
public:

	void Set()
	{
		std::cout << "Введите id: ";
		std::cin >> id_;
		std::cout << ", Введите калибр: ";
		std::cin >> size_;
		std::cout << ";\n";
	}

	void Set(std::pair <int, float> pR)
	{
		this->id_ = pR.first;
		this->size_ = pR.second;
	}

	std::pair <int, float> Get()
	{
		return { id_, size_ };
	}
	
private:

	float size_;
	short id_;
};

class Magazine
{
public:

	static short GetFreeSpace()
	{
		return capacity_ - count_;
	}

	static bool IsPatronFits(Patron patron)
	{
		for (auto valid : validSize_)
			if (patron.Get().second == valid)
				return true;

		return false;
	}

	static void FillMagazine()
	{
		for (int i = 0; i < Magazine::GetFreeSpace(); i++)
		{
			Patron patron;
			
			magazine_.push(patron.Get().second);

			++count_;
		}
	}

	static void SetCapacity()
	{
		std::cin >> capacity_;
	}

	static short GetCapacity()
	{
		return capacity_;
	}

private:

	static std::stack <float> magazine_;
	static float validSize_[2] ;
	static short capacity_;
	static short count_;
};

short Magazine::capacity_ = 0;
short Magazine::count_ = 0;

int main()
{
	setlocale(LC_ALL, "ru");

	int count = 0;

	float number = 0;

	//	std::stack <std::pair <int, float>> patronsBox1;
						//	id	 size

	std::stack <float> patronsBox1;

	//std::cout << "Введите ёмкость магазина: ";
	//Magazine::SetCapacity();

	//std::cout << std::endl;

	short box1Count = 0;

	/////////////////////////////////////////

	std::string pathBox1		= "box1.txt",
				pathBox2		= "box2.txt",
				pathMagazine	= "magazine.txt",
				pathGilza		= "gilza.txt";

	std::ifstream fin;

	fin.open(pathBox1);

	if (!fin.is_open())
	{
		std::cout << "Exception";
	}

	else
	{
		std::cout << "File opened" << std::endl;

		char ch;

		/*bool wasComma		= false;
		bool wasSpace		= false;
		bool wasDot			= false;
		bool willBeNumber	= false;
		bool wasDigit		= false;
		bool wasNumber		= false;*/

		bool wasFirstSlash = false;

		bool wasDigit = false;

		short countDigitsAfterComma = 0;

		int rem;

		while (fin.get(ch) && ch != ';')
		{
			if (ch != ';' && !wasFirstSlash)
			{
				box1Count += ch - '0';
				box1Count *= 10;
			}

			if (!wasFirstSlash && ch == ';')
			{
				box1Count /= 10;
				wasFirstSlash = true;
			}
		}

		while (fin.get(ch))
		{
			/*
			if (ch != ';' && !wasFirstSlash)
			{
				box1Count += ch - '0';
				box1Count *= 10;
			}

			if (!wasFirstSlash && ch == ';')
			{
				box1Count /= 10;
				wasFirstSlash = true;
			}

			if (ch == ',' || ch == ' ')
			{
				if (ch == ',')	wasComma = true;
				else			wasSpace = true;

				if (wasComma)
				{
					if (ch == ' ')
					{
						wasSpace = true;
						willBeNumber = true;
					}
				}

				continue;
			}

			else
			{
				wasComma = wasSpace = false;
			}

			if (willBeNumber || wasDot)
			{
				if (ch != '.')
				{
					wasDot = false;
					wasNumber = true;

					if (!wasDigit)
					{
						number += ch - '0';
					}

					else
					{
						++countDigitsAfterComma;

						number += (ch - '0') / pow(10, countDigitsAfterComma);
					}
				}

				else
				{
					wasDot = true;
					continue;
				}
			}*/

			if (ch >= 48 && ch <= 57)
			{
				for (int i = 0; i < 3; i++)	fin.get(ch);

				number = ch - '0';

				for (int i = 0; i < 2; i++)	fin.get(ch);

				if (ch >= 48 && ch <= 57)
				{
					number += (ch - '0') / 10;

					fin.get(ch);

					ch >= 48 && ch <= 57 ? number += (ch - '0') / 100 : number = number;
				}
			}
			/*if (ch == '.')
			{
				fin.get(ch);

				number += (ch - '0') / 10;

				fin.get(ch);

				if (ch >= 48 && ch <= 57)
					number += (ch - '0') / 100;
			}

			else if (ch >= 48 && ch <= 57)
			{
				number += (ch - '0') / 10;

				fin.get(ch);

				if (ch >= 48 && ch <= 57)
					number += (ch - '0') / 100;
			}

			else continue;
		}*/

			std::cout << number << std::endl;

			/*patronsBox1.push(number);
			++count;
			number = 0;*/
		}

		fin.close();
	}

	/*for (int i = 0; i < count; i++)
	{
		std::cout << patronsBox1.top() << std::endl;
		patronsBox1.pop();
	}*/

	/////////////////////////////////////////

	return 0;
}
