#include <iostream>
using namespace std;

int main(){

    int a = 10;
    int *p;
    p = &a;

    cout<< *p << endl; //result :10

    int **q=&p; //concept of double pointer

    cout<< *q << endl; //result : 0x61ff08(may change)
    cout<< **q << endl; //result :10
    return 0;
}
