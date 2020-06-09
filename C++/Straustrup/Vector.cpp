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

Vector::Vector(const Vector& a) 
: elem{new double[a.sz]}, sz{a.sz}
{
  for(int i = 0; i < sz; i++)
    elem[i] = a.elem[i];
}

Vector::Vector(Vector&& a)
: elem{a.elem}, sz{a.sz}
{
  a.elem = nullptr;
  a.sz = 0;
}

Vector& Vector::operator=(const Vector &a){
  double* p = new double[a.sz];
  for(int i = 0; i < a.sz; i++)
    p[i] = a.elem[i];
  delete[] elem;
  elem = p;
  sz = a.sz;
  return *this;
}

Vector::~Vector(){delete[] elem;}

double& Vector::operator[](int i){
  if(i<0 || i>=size()) throw std::out_of_range{"Vector::operator[]"};
  return elem[i];
}

Vector& Vector::operator=(Vector &&a){
  elem = a.elem;
  sz = a.sz;
  a.elem = nullptr;
  a.sz = 0;
  return *this;
}

int Vector::size() const {return sz;}

void Vector::print_elems() const{
  for(int i = 0; i < sz; i++)
    std::cout << elem[i] << ' ';
  std::cout << std::endl; 
}

void vector_test(){
  Vector a = {1,2,3,4};
  Vector b = {1,3,4,5};
  a = b;
  a[2] = 54;
  a.print_elems();
  b.print_elems();
}