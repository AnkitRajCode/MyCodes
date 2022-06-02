#include <iostream>
using namespace std;

// Time Complexicity is O(n)
// dataType name of Function(array, Size, What to Search)
int linearSearch( int arr[], int n, int key){
    for(int i=0; i<n; i++){
        if(arr[i]==key){
            return i;
        }
    }
    return -1;
}

int main(){
    int n;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    int key;
    cin>>key;

    cout<<linearSearch(arr,n,key )<<endl;
    return 0;
}

// TODO: my solution but best approch is above one

// #include<iostream>
// using namespace std;

// int linearSearch(int arr[], int n, int key){
//     for(int i=0; i<n; i++){
//         if(arr[i]==key){
//             cout<<"number found at index: ";
//             return i;
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
    
//     cout<<linearSearch(arr,n,key)<<endl;

//     return 0;
// }