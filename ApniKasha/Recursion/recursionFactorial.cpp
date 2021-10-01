#include<iostream>
using namespace std;

int factorial(int n){
    if(n==0){
        return 1;
    }
    int  prevNumber =  factorial(n-1);
    return n * prevNumber;
}

int main(){
     int n,p;
     cout<<"Enter the number:";
     cin>> n ;
     cout<<factorial(n)<<endl;
}