#include<iostream>
#include<string>

using namespace std;

int main(){
    string s1 = "abc";
    string s2 = "abc";

    
    if(!s1.compare(s2)) //or you can write if(s1.compare(s2) == 0)
        cout<< "STRINGS ARE EQUAL" <<endl;

    // cout << s2.compare(s1) << endl;
    //agar 1 aata hai too s2 bara hai basically postive aata hai too bara hai aur 0(zero) aata hai 
    //too equal hai

    return 0;
}