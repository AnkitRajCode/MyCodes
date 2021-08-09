#include<iostream>
#include<string>

using namespace std;

int main(){
    string s1 = "nincompoop";

    s1.insert(2, "lol"); //insert(index where value should be inserted, value which is going to be inserted)
    
    cout<< s1 <<endl;
    return 0;
}