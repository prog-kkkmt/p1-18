class complex {
  private:
    double re, im;
  public:
    complex(double r, double i);
    complex(double r);
    complex();

    double real() const;
    void real(double);
    double imag() const;
    void imag(double);

    complex& operator+=(complex);
    complex& operator-=(complex);
    complex& operator*=(complex);
    complex& operator/=(complex);
};
