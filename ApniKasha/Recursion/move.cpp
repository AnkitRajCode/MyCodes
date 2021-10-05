//move all 'x' charecter to the end of the string
#include<iostream>
using namespace std;

string moveAllX(string s){
    if(s.length() == 0){ //base case
        return "";
    }

    char ch=s[0];
    string ans = moveAllX(s.substr(1));

    if(ch=='x'){
        return ans+ch;
    } 
    return ch+ans;
}
int main(){
    cout<<moveAllX("axxbdxcefxhix");
    return 0;
}