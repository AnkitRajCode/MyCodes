#include<iostream>
using namespace std;

int factorial(int n){
    if(n==0){
        return 1;
    }
    int  prevFactorial =  factorial(n-1);
    return n * prevFactorial;

    // we can remove above code and just write one line 
    // for above code and it work for us
    // i.e.
    // return n * factorial(n-1);

}

int main(){
     int n,p;
     cout<<"Enter the number:";
     cin>> n ;
     cout<<factorial(n)<<endl;
}