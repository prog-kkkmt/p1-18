#include <iostream>

int power(int x, unsigned p){
    int answer = 1, i = 0;
    while(i < p){
        answer *= x;
        ++i;
    }
    return answer;
}

int main()
{
    int x; unsigned p;
    std::cin >> x >> p;
    std::cout << power(x, p);
    return 0;
}
