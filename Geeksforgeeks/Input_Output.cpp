// https://practice.geeksforgeeks.org/problems/c-input-output2432/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&difficulty[]=-1&difficulty[]=0&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2difficulty[]-1difficulty[]0page1category[]Arrayscategory[]CPP

#include <bits/stdc++.h>
using namespace std;

int product (int a, int b){
    return a*b;
}

int main(){
    int a,b;
    cout<< "enter numbers";
    cin>> a>> b;

    cout<<product(a,b);
}