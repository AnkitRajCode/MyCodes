// https://practice.geeksforgeeks.org/problems/c-arrays-sum-of-array-set-14805/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&difficulty[]=-1&difficulty[]=0&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2difficulty[]-1difficulty[]0page1category[]Arrayscategory[]CPP
#include<bits/stdc++.h>
using namespace std;

void addarray(int a[],int n){
    int temp=0;
    for( int i=0;i<n;i++){
        temp = a[i]+temp;
    }
    cout<<temp;
}

int main(){
    int n;
    cin >> n;
    int a[n];
    for( int i=0;i<n;i++){
        cin>>a[i];
    }
     addarray(a,n);
}