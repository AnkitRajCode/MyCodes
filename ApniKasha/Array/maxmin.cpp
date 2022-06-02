#include <iostream>
#include<climits> //for setting limits (like max, min,...)
using namespace std; 

int main(){
    int n;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    int maxNo=INT_MIN;
    int minNo=INT_MAX;

    for(int i=0;i<n;i++){
        // if(arr[i]>maxNo){
        //     maxNo=arr[i];
        // }
        maxNo = max(maxNo,arr[i]);
        // if(arr[i]<minNo){
        //     minNo=arr[i];
        // }
        minNo = min(minNo,arr[i]);
    }

    cout<<maxNo<<" "<<minNo<<endl;

    return 0;
}

// TODO: my solution but best approch is above one
// #include<iostream>
// using namespace std;

// int main(){
//     int n;
//     cout<<"Enter size of array: ";
//     cin>>n;
//     int arr[n];
//     for(int i=0; i<n; i++){
//         cin>>arr[i];
//     }
//     int temp=0;
//     int min = INT_MAX;
//     for(int i=0; i<n; i++){
//         if(temp < arr[i]){
//             temp = arr[i];
//         }
//         else if(min > arr[i]){
//             min = arr[i];
//         }
//     }
//     cout<<"max no is: " << temp << endl;
//     cout<<"min no is: " << min << endl;
//     return 0;
// }