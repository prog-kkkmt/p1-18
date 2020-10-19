#pragma once

#include <iostream>
#include <string>

class integer
{
public:

	integer();

	integer(const int& other);

	integer(const integer& other);

	//////////////////// OPERATORS ////////////////////

	int operator[] (int& SIZE_or_index);

	////////// CHANGING //////////

	int operator = (int other);

	int operator + (const integer& other);

	void operator += (const integer& other);

	int operator - (const integer& other);

	void operator -= (const integer& other);

	int operator * (const integer& other);

	int operator * (double other);

	void operator *= (const int& other);

	void operator *= (double other);

	int operator / (const int& other);

	void operator /= (const int& other);

	int operator % (const int& other);

	void operator %= (const int& other);

	int operator ++ ();

	int operator ++ (int other);

	int operator -- ();

	int operator -- (int number);

	int operator ^ (int num);

	////////// COMPARE //////////

	bool operator == (const int& other);

	bool operator == (const integer& other);

	bool operator == (const double& other);

	bool operator != (const int& other);

	bool operator != (const integer& other);

	bool operator != (const double& other);

	bool operator <= (const int& other);

	bool operator <= (const integer& other);

	bool operator <= (const double& other);



	bool operator >= (const int& other);

	bool operator >= (const integer& other);

	bool operator >= (const double& other);



	bool operator > (const int& other);

	bool operator > (const integer& other);

	bool operator > (const double& other);

	bool operator < (const int& other);

	bool operator < (const integer& other);

	bool operator < (const double& other);

	//////////////////// OPERATORS ////////////////////

	std::string ToStr();

	int getNum();

	double getROD();

	friend std::ostream& operator << (std::ostream& out, integer number);
	friend std::istream& operator >> (std::istream& in, integer& number);

private:
	int number_;
	bool isIndex = false;
	int* arr_;
	int size_ = 0;		//	Array SIZE.
	double rod_ = 0;	//	Remainder Of Devide.
};