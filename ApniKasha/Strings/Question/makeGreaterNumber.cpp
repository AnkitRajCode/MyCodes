//Form the biggest number from the numeric string
//"5 3 2 1 4" ----> "5 4 3 2 1" matlab koi random number sai sab sai largest number banana hai

#include<iostream>
#include<string>
#include<algorithm>

using namespace std;

int main(){
    string s = "4785951656";

    sort(s.begin(), s.end(), greater<int>());

    cout << s << endl;

    return 0;
}