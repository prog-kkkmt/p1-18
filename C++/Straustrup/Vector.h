template<typename T>
class Vector {
  public:
    Vector(int s);
    Vector(std::initializer_list<T>);

    Vector(const Vector& a);            //copy constructor
    Vector& operator=(const Vector& a); //copy assignment

    Vector(Vector&& a);                //move constructor
    Vector& operator=(Vector&& a);     //move assignment

    ~Vector();

    T* begin() { return &elem[0]; }
    T* end() { return begin() + size(); }

    const T* begin() const { return &elem[0]; }
    const T* end() const { return begin() + size(); }

    T& operator[](int i);
    const T& operator[](int i) const;
    int size() const;
  private:
    T* elem;
    int sz;
};