#include <iostream>
#include <fstream>
#include <stack>

using namespace std;

void StackTrans(stack <double> &stack1, stack <double> &stack2)
{
    stack2.push(stack1.top());
    stack1.pop();
}

int main()
{
    setlocale(LC_ALL,"rus");
    stack <double> IdStkBox;
    stack <double> StkBox;

    stack <double> IdStkBox2;
    stack <double> StkBox2;

    stack <double> IdStkVib;
    stack <double> StkVib;

    stack <double> IdStkGil;
    stack <double> StkGil;

    ifstream BoxIn("box1.txt");
    ifstream magazin("magazin.txt");

    ofstream OutBox("box2.txt");
    ofstream OutVib("vibor.txt");
    ofstream OutGil("gilza.txt");

    int i=0;
    int id,n;

    double d;
    char c;

    int Nmag;
    double MaxMag,MinMag;


    magazin >> Nmag >> c >> MinMag >> c >>  MaxMag;

    BoxIn >> n >> c;
    for(i=0; i<n; i++)
    {
        BoxIn >> id >> c >> d >> c;
        IdStkBox.push(id);
        StkBox.push(d);
    }

    n=0;
    while(!IdStkBox.empty())
    {
        cout << IdStkVib.top() << " " << StkVib.top() << " " << n <<endl;
        if (n != Nmag)
        {
            if (MaxMag >= StkBox.top() && StkBox.top() >= MinMag)
            {
                n++;
                StackTrans(StkBox,StkVib);
                StackTrans(IdStkBox,IdStkVib);

        cout << IdStkVib.top() << " " << StkVib.top() << " " << n <<endl;

            }
            else
            {
                StackTrans(StkBox,StkBox2);
                StackTrans(IdStkBox,IdStkBox2);
            }
        }
        else if (!StkVib.empty())
        {
            StackTrans(StkVib,StkGil);
            StackTrans(IdStkVib,IdStkGil);
        }

    }

    while(!StkBox2.empty())
    {
        OutBox << " " << IdStkBox2.top() << " " << StkBox2.top() << ";";
        IdStkBox2.pop();
        StkBox2.pop();
    }
    while(!StkVib.empty())
    {
        OutVib << " " << IdStkVib.top() << " " << StkVib.top() << ";";
        IdStkVib.pop();
        StkVib.pop();
    }
    while(!StkGil.empty())
    {
        OutGil << " " << IdStkGil.top() << " " << StkGil.top() << ";";
        IdStkGil.pop();
        StkGil.pop();
    }


system("pause");
return 0;
}
