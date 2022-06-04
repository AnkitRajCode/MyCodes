#include <iostream>
using namespace std;

int main(){
    int mx =-1999999; //very small value so that it can update with greater value present at index 0
    int n;
    cin>>n;

    int a[n]; 

    for(int i=0; i<n; i++){
        cin>>a[i];
    }

    for(int i=0; i<n; i++){
        mx = max(a[i], mx);
        cout << mx << " ";
    }
    return 0;
}


// TODO: My Solution :
// #include<iostream>
// using namespace std;

// int main(){
//     int n,key,result ;
    
//     cout<<"Enter size of array: ";
//     cin>>n;
//     int arr[n];

//     cout<<"Enter Elements: ";
//     for(int i=0; i<n; i++){
//         cin>>arr[i];
//     }

//     cout<<"enter the index till where youy have too find the maxium: ";
//     cin>>key;


//     int temp=INT_MIN;
//     for(int i=0;i<=key;i++){
//         if(arr[i]>temp){
//             temp=arr[i];
//             result = max(arr[i],arr[key]);
//         }
//     }
//     cout<<result<<endl;

//     return 0;
// }