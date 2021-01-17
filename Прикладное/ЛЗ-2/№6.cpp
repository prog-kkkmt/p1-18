#include <iostream>

using namespace std;

int log(int k){
    int res = 1, i = -1;
    while (res <= k){
        res *= 2;
        i++;
    }
    return i;
}

int main(){
    int n, l = 0, count, x;
    cin >> count;
    while(l < count){
        cin >> x;
        cout << log(x) << endl;
        l++;
    }

    return 0;
}
