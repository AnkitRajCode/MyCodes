//move all 'x' charecter to the end of the string
#include<iostream>
using namespace std;

string duplicates(string s){
    if(s.length() == 0){ //base case
        return "";
    }

    char ch=s[0];
    string ans = duplicates(s.substr(1));

    if(ch==ans[0]){
        return ans;
    } 
    return (ch+ans);
}
int main(){
    cout<<duplicates("aaaabbbeeecdddd");
    return 0;
}