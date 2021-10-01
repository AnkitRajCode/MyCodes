// nth position fibonacci
#include<iostream>
using namespace std;

int fibonacci(int n){
    if(n==0 || n==1){ //base condition
        return n;
    }
    return fibonacci(n-1) + fibonacci(n-2);
}

int main(){
     int n;
     cout<<"Enter the position number for which you want to find fibonacci:";
     cin>> n ;
     cout<<fibonacci(n)<<endl;
}