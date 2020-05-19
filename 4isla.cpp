#include <iostream>
using namespace std;

void Square (int&, int&);
void Cube (int&,int&);
void Swap (int&, int&);
void GetVals(int&, int&);
typedef void (*VPF) (int &, int &);
void PrintVals(VPF, int&, int& );

int main()
{
VPF pFunc;
bool fQuit = false;

int ValOne=1, ValTwo=2;
int choice;
while (fQuit == false)
{
    cout << "(0)Quit (1)Change values (2)Square (3)Cube (4)Swap";
    cout << endl;
    cin >> choice;
    switch(choice)
{
    case 1: pFunc=GetVals; break;
    case 2: pFunc=Square; break;
    case 3: pFunc=Cube; break;
    case 4: pFunc=Swap; break;
    default: fQuit = true; break;
}
if(fQuit)
    break;
PrintVals(pFunc, ValOne, ValTwo);

}
    return 0;
}

void PrintVals(VPF pFunc, int& x, int& y)
{
    cout << "x: " << x << " y: " << y << endl;
    pFunc(x,y);
    cout << "x: " << x << " y: " << y << endl;
}

void Square (int & rX, int & rY )
{
    rX *=rX;
    rY *=rY;
}

void Cube(int & rX, int & rY )
{
    int tmp;

    tmp = rX;
    rX *= rX;
    rX = tmp * rX;

    tmp = rY;
    rY *= rY;
    rY = rY * tmp;
}

void Swap(int & rX, int & rY)
{
    int temp;
    temp = rX;
    rX = rY;
    rY = temp;
}

void GetVals(int & rValOne, int & rValTwo)
{
    cout << "New value for ValOne: ";
    cin >> rValOne;
    cout << "New value for ValTwo: ";
    cin >> rValTwo;
}
