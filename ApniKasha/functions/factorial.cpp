#include <iostream>
#include <math.h>
using namespace std;

int fact(int num){
    int mult =1;
    for(int i=num; i>=1; i--){
        mult = mult * i ;
    }
    return mult;
}

int main(){
    int n;
    cin>>n;

    int ans = fact(n);

    cout<<ans<<endl;
    return 0;
}