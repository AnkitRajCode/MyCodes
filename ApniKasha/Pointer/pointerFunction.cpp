#include <iostream>
using namespace std;
//This is example of call by value
// in this only value are pass our acutal variable are untoched
// void increment(int a){
//     a++;
// }
// int main(){
//     int a=2;
//     increment(a);
//     cout<<a<<endl;
// return 0;
// }

//this is example of call by reference
// where as in this our variable is pass through function by sending our address through pointer
void swap(int *a,int *b){
    int temp=*a;
    *a=*b;
    *b=temp;
}
int main(){
    int a = 2;
    int b = 4;

    // int *aptr=&a;
    // int *bptr=&b;

    swap(&a,&b);

    cout<<a<<" "<<b<<endl;
}
