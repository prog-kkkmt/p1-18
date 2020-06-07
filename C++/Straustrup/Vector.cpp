#include <iostream>
#include "Vector.h"
#include <stdexcept>

Vector::Vector(int s){
  elem = new double[s];
  sz = s;
}

Vector::Vector(std::initializer_list<double> lst)
  :elem{new double[lst.size()]}, sz{(int)lst.size()}
  {
    std::copy(lst.begin(), lst.end(), elem);
  }

Vector::~Vector(){delete[] elem;}

double& Vector::operator[](int i){
  if(i<0 || i>=size()) throw std::out_of_range{"Vector::operator[]"};
  return elem[i];
}

int Vector::size() const {return sz;}

void vector_test(){
  Vector a = {1.2,3.4,5.6};
  Vector b(5);
  b[0] = 1;
  for (int i = 0; i < a.size(); i++)
    std::cout << a[i] + b[0] << std::endl;
}