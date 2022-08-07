#include<iostream>
#include<string>
using namespace std;

int main(){

    string s="GEEKS";
    
    for(int i=s.size()-1; i>=0;i--){
        cout<<s[i];
    }
    

    return 0;
}
