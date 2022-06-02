#include <iostream>
using namespace std;

// Time Complexity of Binary Search is O(log n) (where base of log is 2)
// Binary Search is better than Linear Search Because it take less time
int BinarySearch(int arr[],int n, int key){
    int s=0,e=n;
    //at first we need to put condition that start should be less that equal to end because
    //if start point come ahead of end point we cannot able to find mid 
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


// TODO: my solution both are same

// #include<iostream>
// using namespace std;

// int BinarySearch(int arr[], int n, int key){
//     int start = 0;
//     int end = n-1;
//     while(start <= end){
//         int mid = ( start + end )/2;

//         for(int i=0; i<n; i++){
//             if(arr[mid]==key){
//                 return mid;
//             }
//             else  if(arr[mid]>key){
//                 end = mid-1;
//             }
//             else if(arr[mid]<key){
//                 start = mid+1;
//             }
//         }
//     }
//     return -1;
// }

// int main(){
//     int n,key;
    
//     cout<<"Enter size of array: ";
//     cin>>n;
//     int arr[n];

//     cout<<"Enter Elements: ";
//     for(int i=0; i<n; i++){
//         cin>>arr[i];
//     }

//     cout<<"Enter key: ";
//     cin>>key;
    
//     cout<<BinarySearch(arr,n,key)<<endl;

//     return 0;
// }