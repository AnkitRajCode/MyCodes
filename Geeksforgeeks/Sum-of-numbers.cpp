// https://practice.geeksforgeeks.org/problems/c-functions-set-1introduction/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2page1category[]Arrayscategory[]CPP

#include<bits/stdc++.h>
using namespace std;

int calsum(int a,int b, int c){
    return a+b+c;
}

int main(){
    int a,b,c;  
    cin>>a>>b>>c;

    cout<<calsum(a,b,c);
}