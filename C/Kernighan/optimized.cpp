#include <iostream>
int main()
{
 int n;
 std::cin >> n;
 int k = 1;
 int i = 0;
 int steps = 0;
 
 while(i < n){
     if (i > 0 && !(i % 2) && 2*i <= n){
         k = k*k;
         i = 2*i;
         steps++;
     }
     else{
         k = k*2;
         i++;
         steps++;
     }
 }

 /*
 for (int i = 1; i<=n; i++){
    k = k * 2;
    steps++;
 }
 */

    
 std::cout << k << " " << steps << std::endl;
 return 0;
}
