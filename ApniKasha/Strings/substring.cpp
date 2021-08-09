#include<iostream>
#include<string>

using namespace std;

int main(){
    string s = "nincompoop";

    //substr (i.e. subString ) we have to give index range from where to where we have to print
    string s1 = s.substr(6, 4); 

    cout<< s1 <<endl;
    return 0;
}