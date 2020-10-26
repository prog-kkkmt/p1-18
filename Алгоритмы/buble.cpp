#include <iostream>

using namespace std;

void sortBubble(){
    int n,b,i,j;
    cin >> n;
    int m[n];
    for(i = 0;i < n;i++)
        cin >> m[i];
    for(i = 0;i < n;i++)
        for(j = 0;j < n;j++)
            if (m[j] > m[j+1]){
                b = m[j];
                m[j] = m[j+1];
                m[j+1] = b;}
    for(i = 0;i < n;i++)
        cout << m[i] << " ";
}
int main(){
    sortBubble();
    return 0;
}
