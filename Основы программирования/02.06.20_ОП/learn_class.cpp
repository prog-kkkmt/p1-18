#include <iostream>

class Cpoint
{
private:
    int X;
    int Y;

public:
    Cpoint(int x = 0, int y = 0);
    int PeremForUser;
    void SetX(int _x)
    {
        X = _x;
    }
    void SetY(int _y)
    {
        Y = _y;
    }
    int GetX();
    int GetY();

    int AddFunction();
    int PowerFunction();

    void Prn();
};

int Cpoint::AddFunction()
{
    return X + Y;
}

int PowerFunction(int X)
{
    return X * X;
}

int Cpoint::GetX()
{
    return X;
}
int Cpoint::GetY()
{
    return Y;
}

Cpoint::Cpoint(int _x, int _y)
{
    X = _x;
    Y = _y;
}

void Cpoint::Prn()
{
    std::cout << "Tochka" << X << ' ' << Y << std::endl;
}

int main()
{
    int a, b;
    Cpoint A, *pA = &A;
    Cpoint B(45, 657);
    pA = new Cpoint;
    A.SetX(7);
    A.SetY(1);
    //pA -> SetY(1000);
    std::cout << A.GetX() << ' ' << A.GetY() << std::endl;
    std::cin >> a >> b;
    A.SetX(a);
    A.SetY(b);
    std::cout << A.GetX() << ' ' << A.GetY() << std::endl;
    A.Prn();
    B.Prn();
    delete pA;
    return 0;
}
