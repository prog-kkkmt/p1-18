/**Proc3. ќписать процедуру Mean(X, Y, AMean, GMean), вычисл€ющую среднее арифметическое AMean = (X+Y)/2 и среднее геометрическое GMean = (XЈY)1/2 двух положительных чисел X и Y (X и Y Ч входные
 AMean и GMean Ч выходные параметры вещественного типа). — помощью этой процедуры найти среднее арифметическое и среднее геометрическое дл€ пар (A, B), (A, C), (A, D), если даны A, B, C, D.*/
 #include <iostream>
 #include <cmath>
 using namespace std;
 void mean(float x,float y, float amean,float gmean){
amean = (x+y)/2;
gmean = pow(x*y,0.5);
cout<<"srednieArifmetich: "<<amean<<endl;
cout<<"srednieGeometricheskoe: "<<gmean<<endl;
}
 int main(){
     float a,b,c,d,amean,gmaen;
     cout<<"Vvedite a: ";
     cin>>a;
     cout<<endl;
      cout<<"Vvedite b: ";
     cin>>b;
     cout<<endl;
      cout<<"Vvedite c: ";
     cin>>c;
     cout<<endl;
      cout<<"Vvedite d: ";
     cin>>d;
     cout<<endl;
     cout<<"1 Para "<<endl;
     mean(a,b,amean,gmaen);
     cout<<endl<<"2 Para "<<endl;
     mean(a,c,amean,gmaen);
     cout<<endl<<"3 Para "<<endl;
     mean(a,d,amean,gmaen);
 return 0;
 }
