#include <iostream>
using namespace std;

// Time Complexity of Binary Search is O(log n) (where base of log is 2)
// Binary Search is better than Linear Search Because it take less time
int BinarySearch(int arr[],int n, int key){
    int s=0,e=n;
    while(s<=e){
        int mid =(s+e)/2;

        if(arr[mid]==key){
            return mid;
        }
        else if(arr[mid]>key){
            e=mid-1;
        }
        else{
            s=mid+1;
        }
    }
    return -1;
}

int main(){
    int n,key;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    cin>>key;

    cout<<BinarySearch(arr,n,key)<<endl;

    return 0;
}