// определите только функцию power, где
//    x - число, которое нужно возвести в степень
//    p - степень, в которую нужно возвести x
//

#include <iostream>

using namespace std;

int power(int x, unsigned p) {
    int answer = 1, i = 0;
    while(i < p){
        answer *= x;
        i++;
    }
    return answer;
}

int main() {
    int a, b;
    cin >> a >> b;

    cout << power(a, b);
    return 0;
}
