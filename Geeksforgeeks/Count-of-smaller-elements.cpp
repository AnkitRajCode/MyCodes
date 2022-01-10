// https://practice.geeksforgeeks.org/problems/count-of-smaller-elements5947/1/?category[]=Arrays&category[]=CPP&category[]=Arrays&category[]=CPP&difficulty[]=-2&page=1&query=category[]Arrayscategory[]CPPdifficulty[]-2page1category[]Arrayscategory[]CPP

#include <bits/stdc++.h> 
using namespace std;
int countOfElements(int arr[], int n, int key){
    int temp=0;
    for(int i=0;i<n;i++){
        if(key >= arr[i]){
            temp++;
        }
    }
    return temp;
}

int main(){
    int n,key;
    cout<<"Enter the size of array: ";
    cin>>n;

    int arr[n];
    cout<<"Enter the Elements: ";
    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    cout<<"Enter the number: ";
    cin>>key;

    cout<<countOfElements(arr,n,key)<<endl;
    return 0;
}