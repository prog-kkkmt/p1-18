#include <iostream>
#include "Vector.h"
#include <stdexcept>

template<typename T>
Vector<T>::Vector(int s){
  elem = new double[s];
  sz = s;
}

template<typename T>
Vector<T>::Vector(std::initializer_list<T> lst)
  :elem{new double[lst.size()]}, sz{(int)lst.size()}
  {
    std::copy(lst.begin(), lst.end(), elem);
  }

template<typename T>
Vector<T>::Vector(const Vector& a) 
: elem{new double[a.sz]}, sz{a.sz}
{
  for(int i = 0; i < sz; i++)
    elem[i] = a.elem[i];
}

template<typename T>
Vector<T>::Vector(Vector&& a)
: elem{a.elem}, sz{a.sz}
{
  a.elem = nullptr;
  a.sz = 0;
}

template<typename T>
Vector<T>& Vector<T>::operator=(const Vector &a){
  T* p = new T[a.sz];
  for(int i = 0; i < a.sz; i++)
    p[i] = a.elem[i];
  delete[] elem;
  elem = p;
  sz = a.sz;
  return *this;
}

template<typename T>
Vector<T>::~Vector(){delete[] elem;}

template<typename T>
T& Vector<T>::operator[](int i){
  if(i<0 || i>=size()) throw std::out_of_range{"Vector::operator[]"};
  return elem[i];
}

template<typename T>
const T& Vector<T>::operator[](int i) const{
  if(i<0 || i>=size()) throw std::out_of_range{"Vector::operator[]"};
  return elem[i];
}

template<typename T>
Vector<T>& Vector<T>::operator=(Vector &&a){
  elem = a.elem;
  sz = a.sz;
  a.elem = nullptr;
  a.sz = 0;
  return *this;
}

template<typename T>
int Vector<T>::size() const {return sz;}



void vector_test(){
  Vector<double> a = {1,2,3,4};
  Vector<double> b = {1,3,4,5};
  a = b;
  a[2] = 54;
  for(auto& s : a)
    std::cout << s << " ";
  std::cout << std::endl;
  for(auto& s : b)
    std::cout << s << " ";
}