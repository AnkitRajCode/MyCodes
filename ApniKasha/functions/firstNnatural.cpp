#include <iostream>
#include <math.h>
using namespace std;

int nNaturalnumber(int n){
    // int add=0;
    // for(int i=0; i<=n; i++){
    //     add+= i;
    // }
    int add = (n*(n+1))/2; //formula based
    cout<<add<<endl;
    return add;
}
int main(){
    int n;
    cin>>n;

    nNaturalnumber(n);
    return 0;
}