#include <iostream>
#include <math.h>
using namespace std;

int factorial(int num){
    int mult =1;
    for(int i=num; i>=1; i--){
        mult = mult * i ;
    }
    return mult;
}
// we can also use this function code down here
// int factorial(int num){
//     int mult =1;
//     for(int i=2; i<=num; i++){
//         mult*=i ;
//     }
//     return mult;
// }

int main(){
    int n,r;
    cin>>n>>r;

    int ans = factorial(n)/(factorial(r)*factorial(n-r));
    cout<<ans<<endl;

    return 0;
}