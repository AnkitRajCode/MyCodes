// print n number in Increasing and Decreasing order
#include<iostream>
using namespace std;

void des(int n){
    if(n==0){ //Decreasing base condition
        return;
    }
    cout<<n<<endl;
    des(n-1);
}
void inc(int n){
    if(n==0){ //Increasing base condition
        return;
    }
    inc(n-1);
    cout<<n<<endl;
}

int main(){
     int n;
     cout<<"Enter the number:";
     cin>> n;
     des(n);
     inc(n);
}