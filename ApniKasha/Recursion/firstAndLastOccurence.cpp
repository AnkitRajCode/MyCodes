// find the first and last occurence of a number in an array
#include<iostream>
using namespace std;

int firstOcc(int arr[], int n, int index, int key){
    if(index==n){ //base Condition
        return -1;
    }
    if(arr[index]==key){
        return index;
    }
    return firstOcc(arr,n,index+1,key);
}

int lastOcc(int arr[], int n, int index, int key){
    if(index==n){ //base Condition
        return -1;
    }
    int restArray = lastOcc(arr,n,index+1,key);
    if(restArray != -1){
        return restArray;
    }
    if(arr[index]==key){
        return index;
    }
    return -1;
}
int main(){
    int n,f;
    cout<<"Enter the size of array:";
    cin>> n ;
    int arr[n];

    for(int i=0;i<n;i++){
        cin>>arr[i];
    }

    cout<<"Enter the number whose index you have to find:";
    cin>> f;

    cout<<firstOcc(arr,n,0,f)<<endl;
    cout<<lastOcc(arr,n,0,f)<<endl;
    return 0;
}