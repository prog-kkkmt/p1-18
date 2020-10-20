#include <iostream>
#include <string>

class integer
{
public:

	integer();
	integer(const int& other);
	integer(const double& other);
	integer(const integer& other);

	//////////////////// OPERATORS ////////////////////

	int operator[] (int& SIZE_or_index);

	////////// CHANGING //////////

	/* virtual */
	void operator = (const int& num);
	void operator = (const double& num);
	void operator = (const integer& other);

	int operator + (const int& num);
	int operator + (const double& num);
	int operator + (const integer& other);

	void operator += (const int& num);
	void operator += (const double& num);
	void operator += (const integer& other);

	int operator - (const int& num);
	int operator - (const double& num);
	int operator - (const integer& other);

	void operator -= (const int& num);
	void operator -= (const double& num);
	void operator -= (const integer& other);

	int operator * (const int& num);
	int operator * (const double& num);
	int operator * (const integer& other);

	void operator *= (const int& num);
	void operator *= (const double& num);
	void operator *= (const integer& other);

	int operator / (const int& num);
	int operator / (const double& num);
	int operator / (const integer& other);

	void operator /= (const int& num);
	void operator /= (const double &num);
	void operator /= (const integer& other);

	int operator % (const int& num);
	int operator % (const double& num);
	int operator % (const integer& other);

	void operator %= (const int& num);
	void operator %= (const double& num);
	void operator %= (const integer& other);

	int operator ++ ();
	int operator ++ (int num);

	int operator -- ();
	int operator -- (int num);

	int operator ^ (const int& num);
	int operator ^ (const integer& other);

	////////// COMPARE //////////

	bool operator == (const int& num);
	bool operator == (const double& num);
	bool operator == (const integer& other);

	bool operator != (const int& num);
	bool operator != (const double& num);
	bool operator != (const integer& other);

	bool operator <= (const int& num);
	bool operator <= (const double& num);
	bool operator <= (const integer& other);

	bool operator >= (const int& num);
	bool operator >= (const double& num);
	bool operator >= (const integer& other);

	bool operator > (const int& num);
	bool operator > (const double& num);
	bool operator > (const integer& other);

	bool operator < (const int& num);
	bool operator < (const double& num);
	bool operator < (const integer& other);

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

/*
class arr : private integer
{

};
*/