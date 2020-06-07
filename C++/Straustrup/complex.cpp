#include<iostream>
#include "complex.h"

// constructors
complex::complex(double r, double i) : re{r}, im{i} {}
complex::complex(double r) : re{r}, im{0} {}
complex::complex() : re{0}, im{0} {}

double complex::real() const {return re;}
void complex::real(double d) {re = d;}
double complex::imag() const {return im;}
void complex::imag(double d) {im = d;}

complex& complex::operator+=(complex z) {re+=z.re; im+=z.im; return *this;}
complex& complex::operator-=(complex z) {re-=z.re; im-=z.im; return *this;}
complex& complex::operator*=(complex z) {re*=z.re; im*=z.im; return *this;}
complex& complex::operator/=(complex z){
  if(z.re == 0 || z.im == 0){
    std::cout << "Operator /= : zero division" << std::endl;
    return *this;
  }
  else{
    re /= z.re;
    im /= z.im;
    return *this;
  }
}
complex operator+(complex a, complex b) {return a+=b;}
complex operator-(complex a, complex b) {return a-=b;}
complex operator-(complex a) {return {-a.real(), -a.imag()};}
complex operator*(complex a, complex b) {return a*=b;}
complex operator/(complex a, complex b) {return a/=b;}

bool operator==(complex a, complex b){
  return a.real()==b.real() && a.imag()==b.imag();
}

bool operator!=(complex a, complex b){
  return !(a==b);
}

void complex_test(){
  complex a(5,2);
  complex b(5,1);
  complex c;
  c = a*b;
  if(a != b)
    std::cout << "a!=b"<< std::endl;
  std::cout << c.real() <<" "<< a.real() << std::endl;
}