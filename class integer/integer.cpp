#include <iostream>
#include <string>

#include "integer.h"

integer::integer()
{
	this->number_ = 0;
}

integer::integer(const int& other)
{
	this->number_ = other;
}

integer::integer(const integer& other)
{
	this->number_ = other.number_;
	this->rod_ = other.rod_;
}

int integer::getNum()
{
	return this->number_;
}

double integer::getROD()
{
	return this->rod_;
}

std::string integer::ToStr()
{
	std::string str = std::string();
	char c = { '\0' };
	int i = this->number_;

	if (this->number_ < 0)
		i = -i;

	do {
		str.insert(0, 1, (char)(i % 10 + '0'));
	} while ((i /= 10) > 0);

	if (this->number_ < 0)
		str.insert(0, 1, '-');

	return str;
}

////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////// OPERATORS ////////////////////

int integer::operator[] (int& SIZE_or_index)
{
	if (!(isIndex))
	{
		delete[] this->arr_;
		arr_ = new int[SIZE_or_index];
		this->size_ = SIZE_or_index;
		this->isIndex = true;
	}

	else
	{
		int* arr = new int[size_];

		for (int i = 0; i < size_; i++)
		{
			arr = arr_;
		}

		if (isIndex)
		{
			for (int i = 0; i < SIZE_or_index; i++)
			{
				++arr;
			}
		}

		return *arr;
		delete[] arr;
	}
}

////////// CHANGING //////////

int integer::operator = (int other)
{
	this->number_ = other;
	return number_;
}

int integer::operator + (const integer& other)
{
	return this->number_ + other.number_;
}

void integer::operator += (const integer& other)
{
	this->number_ = this->number_ + other.number_;
}

int integer::operator - (const integer& other)
{
	return this->number_ - other.number_;
}

void integer::operator -= (const integer& other)
{
	this->number_ = this->number_ - other.number_;
}

int integer::operator * (const integer& other)
{
	return this->number_ * other.number_;
}

int integer::operator * (double other)
{
	this->rod_ = double(number_) * other - int(this->number_ * other);
	return int(this->number_ * other);
}

void integer::operator *= (const int& other)
{
	this->number_ = this->number_ * other;
}

void integer::operator *= (double other)
{
	this->rod_ = double(number_) * other - int(this->number_ * other);
	this->number_ = int(this->number_ * other);
}

int integer::operator / (const int& other)
{
	this->rod_ = this->number_ % other;
	return this->number_ / other;
}

void integer::operator /= (const int& other)
{
	this->rod_ = this->number_ % other;
	this->number_ = this->number_ / other;
}

int integer::operator % (const int& other)
{
	return this->number_ % other;
}

void integer::operator %= (const int& other)
{
	this->number_ = this->number_ % other;
}

int integer::operator ++ ()
{
	this->number_ += 1;

	return this->number_;
}

int integer::operator ++ (int other)
{
	integer temp(*this);

	this->number_ += 1;

	return temp.number_;
}

int integer::operator -- ()
{
	this->number_ -= 1;

	return this->number_;
}

int integer::operator -- (int number)
{
	integer temp(*this);

	this->number_ -= 1;

	return temp.number_;
}

int integer::operator ^ (int num)
{
	int temp = this->number_;
	for (int i = 1; i < num; i++)
		temp *= this->number_;

	return temp;
}

////////// COMPARE //////////

bool integer::operator == (const int& other)
{
	return this->number_ == other;
}

bool integer::operator == (const integer& other)
{
	return this->number_ == other.number_ && this->rod_ == other.rod_;
}

bool integer::operator == (const double& other)
{
	return this->number_ == int(other) && this->rod_ == other - int(other);
}

bool integer::operator != (const int& other)
{
	return this->number_ != other;
}

bool integer::operator != (const integer& other)
{
	return this->number_ != other.number_ || this->rod_ != other.rod_;
}

bool integer::operator != (const double& other)
{
	return this->number_ != int(other);
}

bool integer::operator <= (const int& other)
{
	return this->number_ <= other;
}

bool integer::operator <= (const integer& other)
{
	return this->number_ <= other.number_ && this->rod_ <= other.rod_;
}

bool integer::operator <= (const double& other)
{
	return this->number_ <= int(other);
}



bool integer::operator >= (const int& other)
{
	return this->number_ >= other;
}

bool integer::operator >= (const integer& other)
{
	return this->number_ >= other.number_ && this->rod_ >= other.rod_;
}

bool integer::operator >= (const double& other)
{
	return this->number_ >= int(other);
}



bool integer::operator > (const int& other)
{
	return this->number_ > other;
}

bool integer::operator > (const integer& other)
{
	return (this->number_ > other.number_) || (this->number_ == other.number_ && this->rod_ > other.rod_);
}

bool integer::operator > (const double& other)
{
	return this->number_ > int(other);
}

bool integer::operator < (const int& other)
{
	return this->number_ < other;
}

bool integer::operator < (const integer& other)
{
	return (this->number_ < other.number_) || (this->number_ == other.number_ && this->rod_ < other.rod_);
}

bool integer::operator < (const double& other)
{
	return this->number_ < int(other);
}

////////////////////////////////////////////////////////////////////////////////////////////////////

std::ostream& operator << (std::ostream& out, integer number)	//	Перегрузка оператора вывода.
{
	out << number.number_;
	return out;
}

std::istream& operator >> (std::istream& in, integer& number)	//	Перегрузка оператора ввода.
{
	in >> number.number_;
	return in;
}

int main()
{
	integer a = 10;

	std::cout << a + 5;

	return 0;
}
