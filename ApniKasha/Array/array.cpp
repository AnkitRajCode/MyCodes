#include <iostream>
using namespace std;

int main(){

    // TODO: Way to Store Array
    // int arr[4];
    // arr[0] = 1;
    // arr[1] = 2;
    // arr[2] = 3;
    // arr[3] = 4;
    // cout<<arr[1]<<endl; // Answer:  2

    // TODO: Way to Store Array
    // int arr[4] = {1, 2, 3, 4};
    // cout<<arr[3]<<endl; // Answer:  4

    // TODO: Way to Store Array
    int n;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    for(int i=0; i<n; i++){
        cout<<arr[i]<<" ";
    }
 
    return 0;
}