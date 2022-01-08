// https://practice.geeksforgeeks.org/problems/c-array-print-an-element-set-25933/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2page1category[]Arrayscategory[]CPP

#include <bits/stdc++.h>
using namespace std;

int indexKey(int a[], int n, int key){
    return a[key];
    // return a[key-1];
}

int main(){
    int n,key;
    cout<<"Enter size of Array: ";
    cin >> n;
    int a[n];

    cout<<"Enter Elements: ";
    for(int i=0; i<n; i++){
        cin>>a[i];
    }

    cout<<"Enter index: ";
    cin>>key;

    cout<<indexKey(a, n, key);
}