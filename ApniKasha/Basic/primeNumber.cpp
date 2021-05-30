#include <iostream>
#include <cmath>
using namespace std;

int main(){
    int n;
    cin>>n;

    bool flag=0;

    for(int i=2; i<=sqrt(n); i++){
        if(n%i==0){
            cout<<"not a prime number"<<endl;
            flag=1;
            break;
        }
        // else{
        //     cout<<"Prime Number"<<endl;
        //     break;
        // }
        // NOTE: we cannot use else part here because 1 is prime or not is cannot detect by user
    }

    if(flag==0){
        cout<<"prime"<<endl;
    }
    return 0;
}
