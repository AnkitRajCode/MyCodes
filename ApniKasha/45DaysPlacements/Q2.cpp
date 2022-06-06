//without STL
//Initial Template for C++
#include<bits/stdc++.h>
using namespace std;

string reverseWord(string str);

int main() {
	int t;
	cin>>t;
	while(t--)
	{
        string s;
        cin >> s;
        cout << reverseWord(s) << endl;
	}
	return 0;
}
string reverseWord(string str){
     int i;
     for(i=str.size()-1; i>=0;i--){
         
         cout << str[i];
     }
}
//NOTE: With STL
#include<bits/stdc++.h>
using namespace std;

string reverseWord(string str);
int main() {
	int t;
	cin>>t;
	while(t--)
	{
        string s;
        cin >> s;
        
        cout << reverseWord(s) << endl;
	}
	return 0;
}

string reverseWord(string str){
    reverse(str.begin(),str.end());
    return str;
}