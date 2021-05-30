#include <iostream>
using namespace std;

int main(){
    int a; //decleration
    a=12; //initialisation

    cout<<"size of int"<<sizeof(a)<<endl;

    float b;
    cout<<"size float"<<sizeof(b)<<endl;

    char c;
    cout<<"size of char"<<sizeof(c)<<endl;

    bool d;
    cout<<"size of bool"<<sizeof(d)<<endl;

    short int si ;
    long int li ; //dikhana chaiye tha 8byte lekin humko 4 byte hi dikhaya 
    cout<<"size of shortint"<<sizeof(si)<<endl;
    cout<<"size of longint"<<sizeof(li)<<endl;

    return 0;
}