#include<iostream>
#include<string>

using namespace std;

int main(){
    string S = "abbjk";
    string T;
    for(int i=S.size()-1;i>=0;i--){
        T+=S[i];
    }

    if(S==T){
        cout<<"Is Palindrome";
        // return 1;
    }
    else{
        cout<<"Is not Palindrom";
        // return 0;
    }
}