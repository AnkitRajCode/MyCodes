#include<iostream>
#include<string>

using namespace std;

int main(){
    string abc ="hcaa ihaskdajoi iuhashasj ioju has";

    cout << abc.size() <<endl;
    cout << abc.length() <<endl;

    // length help us in itrate

    for(int i=0; i<abc.length(); i++)
        cout<< abc[i] <<endl;
        
    return 0;
}