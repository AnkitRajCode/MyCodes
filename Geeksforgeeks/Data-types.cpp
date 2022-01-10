// https://practice.geeksforgeeks.org/problems/c-data-types1523/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2page1category[]Arrayscategory[]CPP

#include <bits/stdc++.h>
using namespace std;
int cppIntType(int a) {
    return a;
}
    
char cppCharType(char b) {
    return b;
}
    
float cppFloatType(float c) {
    return c;
}

int main(){
    int a;
    char b;
    float c;
    cin>>a>>b>>c;

    cout<<cppIntType(a)<<endl;
    cout<<cppCharType(b)<<endl;
    cout<<cppFloatType(c)<<endl;
    return 0;
}