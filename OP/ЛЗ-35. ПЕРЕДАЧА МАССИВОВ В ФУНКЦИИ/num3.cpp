#include <iostream>
using namespace std;

void MinmaxNum(double *v, int n, double *Nmin, double *Nmax);
int main()
{
    setlocale(LC_ALL, "Russian");
    for (int k = 0; k < 3; k++)
    {
        int n;
        double Nmin,Nmax;
        cout << "Размер масива " << k+1 << ":";
        cin >> n;
        double *v = new double[n];
        for (int i = 0; i < n; i++)
            cin >> v[i];
        MinmaxNum(v, n,&Nmin,&Nmax);
        cout << "Максимальное:" << Nmax << endl;
        cout << "Минимальное:" << Nmin << endl;
        cout << endl;
    }


    return 0;
}

void MinmaxNum(double *v, int n, double *Nmin, double *Nmax)
{
    *Nmin = *Nmax = v[0] ;
    for (int i = 1; i < n; i++)
    {
        if (v[i]>*Nmax)
            *Nmax = v[i];
        if (v[i]<*Nmin)
            *Nmin = v[i];
    }

}
