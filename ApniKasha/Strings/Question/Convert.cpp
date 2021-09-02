//Convert uppar case to lower or lower to upper 
//if value is given like this AghSLoxP then convert all to uppercase or all to lowercase

#include<iostream>
#include<string>
#include<algorithm>

using namespace std;

int main(){
    string str = "adrtiewrbcganaxbajiojd";

    //convert into uppercase

    for(int i=0; i<str.size(); i++){
        if(str[i] >= 'a' && str[i] <= 'z')
            str[i] -=32;
    }

    cout << str <<endl;
    //convert into Lowercase

    for(int i=0; i<str.size(); i++){
        if(str[i] >= 'A' && str[i] <= 'Z')
            str[i] +=32;
    }

    cout << str <<endl;

    transform(str.begin(),str.end(),str.begin(),::toupper);

    cout <<str <<endl;

    transform(str.begin(),str.end(),str.begin(),::tolower);

    cout <<str <<endl;
    return 0;
}