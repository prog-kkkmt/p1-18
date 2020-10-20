#pragma once

#include <iostream>
#include <string>

#include "integer.h"

integer::integer()
{
	this->number_ = 0;
}

integer::integer(const int& num)
{
	this->number_ = num;
}

integer::integer(const double& num)
{
	this->number_ = int(num);
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

void integer::operator = (const int& num)
{
	this->number_ = num;
}
void integer::operator = (const double& num)
{
	this->number_ = int(num);
}
void integer::operator = (const integer& other)
{
	this->number_ = other.number_;
}

int integer::operator + (const int& num)
{
	return this->number_ + num;
}
int integer::operator + (const double& num)
{
	return this->number_ + int(num);
}
int integer::operator + (const integer& other)
{
	return this->number_ + other.number_;
}

void integer::operator += (const int& num)
{
	this->number_ = this->number_ + num;
}
void integer::operator += (const double& num)
{
	this->number_ = this->number_ + int(num);
}
void integer::operator += (const integer& other)
{
	this->number_ = this->number_ + other.number_;
}



int integer::operator - (const int& num)
{
	return this->number_ - num;
}
int integer::operator - (const double& num)
{
	return this->number_ - int(num);
}
int integer::operator - (const integer& other)
{
	return this->number_ - other.number_;
}

void integer::operator -= (const int& num)
{
	this->number_ = this->number_ - num;
}
void integer::operator -= (const double& num)
{
	this->number_ = this->number_ - int(num);
}
void integer::operator -= (const integer& other)
{
	this->number_ = this->number_ - other.number_;
}



int integer::operator * (const int& num)
{
	return this->number_ * num;
}
int integer::operator * (const double& num)
{
	return int(this->number_ * num);
}
int integer::operator * (const integer& other)
{
	return this->number_ * other.number_;
}

void integer::operator *= (const int& num)
{
	this->number_ = this->number_ * num;
}
void integer::operator *= (const double& num)
{
	this->rod_ = double(number_) * num - int(this->number_ * num);
	this->number_ = int(this->number_ * num);
}
void integer::operator *= (const integer& other)
{
	this->number_ = this->number_ * other.number_;
}



int integer::operator / (const int& num)
{
	this->rod_ = this->number_ % num;
	return this->number_ / num;
}
int integer::operator / (const double& num)
{
	this->rod_ = this->number_ % int(num);
	return this->number_ / num;
}
int integer::operator / (const integer& other)
{
	this->rod_ = this->number_ % other.number_;
	return this->number_ / other.number_;
}

void integer::operator /= (const int& num)
{
	this->rod_ = this->number_ % num;
	this->number_ = this->number_ / num;
}
void integer::operator /= (const double& num)
{
	this->rod_ = this->number_ % int(num);
	this->number_ = this->number_ / num;
}
void integer::operator /= (const integer& other)
{
	this->rod_ = this->number_ % other.number_;
	this->number_ = this->number_ / other.number_;
}

int integer::operator % (const int& num)
{
	return this->number_ % num;
}
int integer::operator % (const double& num)
{
	return this->number_ % int(num);
}
int integer::operator % (const integer& other)
{
	return this->number_ % other.number_;
}

void integer::operator %= (const int& num)
{
	this->number_ = this->number_ % num;
}
void integer::operator %= (const double& num)
{
	this->number_ = this->number_ % int(num);
}
void integer::operator %= (const integer& other)
{
	this->number_ = this->number_ % other.number_;
}

int integer::operator ++ ()
{
	this->number_ += 1;

	return this->number_;
}
int integer::operator ++ (int num)
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
int integer::operator -- (int num)
{
	integer temp(*this);
	this->number_ -= 1;

	return temp.number_;
}



int integer::operator ^ (const int& num)
{
	int temp = this->number_;
	for (int i = 1; i < num; i++)
		temp *= this->number_;

	return temp;
}
int integer::operator ^ (const integer& other)
{
	int temp = this->number_;
	for (int i = 0; i < other.number_; i++)
		temp = this->number_;

	return temp;
}

////////// COMPARE //////////

bool integer::operator == (const int& num)
{
	return this->number_ == num;
}
bool integer::operator == (const double& num)
{
	return this->number_ == int(num) && this->rod_ == num - int(num);
}
bool integer::operator == (const integer& other)
{
	return this->number_ == other.number_ && this->rod_ == other.rod_;
}



bool integer::operator != (const int& num)
{
	return this->number_ != num;
}
bool integer::operator != (const double& num)
{
	return this->number_ != int(num);
}
bool integer::operator != (const integer& other)
{
	return this->number_ != other.number_ || this->rod_ != other.rod_;
}



bool integer::operator <= (const int& num)
{
	return this->number_ <= num;
}
bool integer::operator <= (const double& num)
{
	return this->number_ <= int(num);
}
bool integer::operator <= (const integer& other)
{
	return this->number_ <= other.number_ && this->rod_ <= other.rod_;
}



bool integer::operator >= (const int& num)
{
	return this->number_ >= num;
}
bool integer::operator >= (const double& num)
{
	return this->number_ >= int(num);
}
bool integer::operator >= (const integer& other)
{
	return this->number_ >= other.number_ && this->rod_ >= other.rod_;
}



bool integer::operator > (const int& num)
{
	return this->number_ > num;
}
bool integer::operator > (const double& num)
{
	return this->number_ > int(num);
}
bool integer::operator > (const integer& other)
{
	return (this->number_ > other.number_) || (this->number_ == other.number_ && this->rod_ > other.rod_);
}



bool integer::operator < (const int& num)
{
	return this->number_ < num;
}
bool integer::operator < (const double& num)
{
	return this->number_ < int(num);
}
bool integer::operator < (const integer& other)
{
	return (this->number_ < other.number_) || (this->number_ == other.number_ && this->rod_ < other.rod_);
}


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