#include <iostream>
#include <math.h>
using namespace std;

int octaToDecimal(int n){
    int ans = 0;
    int x = 1;
    while(n>0){
        int y = n%10;
        ans += x*y;
        x *= 8; 
        n /= 10;
    }
    return ans;
}

int main(){
    int n;
    cin>>n;

    cout<<octaToDecimal(n)<<endl;

    return 0;
}