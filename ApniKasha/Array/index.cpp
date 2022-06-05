#include<iostream>
using namespace std;

int main(){
    int n;
    
    cout<<"Enter size of array: ";
    cin>>n;
    int arr[n];

    cout<<"Enter Elements: ";
    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    int more = INT_MIN;

    for(int i=0; i<n; i++){
        int current=0;
        for(int j=i; j<n; j++){
            current = arr[j]+current;
            cout<<current<<endl;
            more = max(current, more);
        }
    }

    cout<<more<<" answer"<<endl;
}