// print all possible permutation of a string
#include<iostream>
using namespace std;

void permutations(string s, string ans){
    if(s.length() == 0){ //base case
        cout<<ans<<endl;
        return;
    }
    for(int i=0; i<s.length(); i++){
        char ch = s[i];
        string ros = s.substr(0,i)+s.substr(i+1);

        permutations(ros,ans+ch);
    }
   
}
int main(){
    permutations("ABC","");
    return 0;
}