typedef int ARRAY[100];
typedef int NUMB;

typedef double DoubleArray[100];
typedef float FLOAT;

typedef unsigned UNSIG;
typedef char TEXT[100];

typedef long LongNUMB;
typedef signed SIG;
typedef short SHORT_INT;

int main()
{
    ARRAY a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int n = 3;
    DoubleArray arr = {233.3242, 45.66, 23.65, 454.65, 6565.7};
    FLOAT fl = 34.34;
    UNSIG elem = 4;
    LongNUMB b = 2147483647;
    SIG c = -2147483648;
    SHORT_INT d = 32767;
    TEXT str = "Hello, i like C++!";
    NUMB i = 345;
    for (int i = 0; i < 10; ++i){
        std::cout << a[i] << ' ';
    }
    std::cout << std::endl;
    std::cout << n << std::endl;
    for (int i = 0; i < 5; ++i){
        std::cout << arr[i] << ' ';
    }
    std::cout << std::endl;
    std::cout << fl << std::endl;
    std::cout << elem << std::endl;
    std::cout << b << std::endl;
    std::cout << c << std::endl;
    std::cout << d << std::endl;
    std::cout << str << std::endl;
    std::cout << i << std::endl;
    return 0;
}
