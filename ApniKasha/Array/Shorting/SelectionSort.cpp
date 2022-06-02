// Find the minimum element in unsorted array and swap it with element at begining
#include <iostream>
using namespace std;

int main(){
    int n;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    for(int i=0; i<n-1; i++){
        for(int j=i+1; j<n; j++){
            if(arr[j]<arr[i]){
                int temp = arr[j];
                    arr[j] = arr[i];
                    arr[i] = temp;
            }
        }
    }

    for(int i=0; i<n; i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
    return 0;
}

// TODO: My Solution
// #include<iostream>
// using namespace std;

// void SelectionSort(int arr[], int n){
//     int temp=0;
//     for(int i=0; i<n-1; i++){
//         for(int j=i+1; j<n; j++){
//             if(arr[i]>arr[j]){
//                 temp = arr[i];
//                 arr[i] = arr[j];
//                 arr[j] = temp;
//             }
//         }
//     }
//     for(int i=0;i<n;i++){
//         cout<<arr[i]<<" ";
//     }cout<<endl;
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
    
//     SelectionSort(arr,n);

//     return 0;
// }