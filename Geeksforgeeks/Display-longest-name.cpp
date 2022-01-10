// https://practice.geeksforgeeks.org/problems/display-longest-name0853/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2page1category[]Arrayscategory[]CPP

#include <bits/stdc++.h>
using namespace std;

string longeststring(string a[],int n){

    for(int i=0; i<n; i++){
        if(a[0].length()<a[i].length()){
            a[0]=a[i];
        }
    }
    return a[0];
}

int main(){
    int n;
    cin>>n;

    string a[n];

    for(int i=0; i<n; i++){
        cin>>a[i];
    }

    cout<<longeststring(a,n);
    return 0;
}