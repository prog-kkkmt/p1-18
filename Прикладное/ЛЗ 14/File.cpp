#include <iostream>

class IntArray
{
public:
    explicit IntArray(size_t data_size)
        : size_(data_size), data(new int[data_size])
    {}
    ~IntArray() { delete [] data; }
private:
    size_t size_;
    int* data;
};

int main()
{
    size_t n;
    std::cin >> n;
    IntArray prototip(n);
    return 0;
}
