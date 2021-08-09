#include<iostream>
#include<string>

using namespace std;

int main(){
    string s1 = "nincompoop";

    s1.erase(3, 2); //erase(starting index, till how many character it should be deleted)

    cout<< s1 <<endl;
    return 0;
}