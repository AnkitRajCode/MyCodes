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

    // TODO: This code does not give all the possible subarray sum
    // int count = 1 ;
    // int result =0;
    // while (count<=n)
    // {
    //     int current=0;
    //     for(int i=0; i<count; i++){
    //         current = arr[i]+current;
    //     }
    //     cout<<current<<endl;
    //     result = result + current;
    //     count++;
    // }
    // cout<<result;

    // TODO: This code here let you know all the subarray sum 
    for(int i=0; i<n; i++){
        int current=0;
        for(int j=i; j<n; j++){
            current = arr[j]+current;
            cout<<current<<endl;
        }
    }

    // FIXME: interview bit questions
    // int Solution::maxSubArray(const vector<int> &A) {
    // for(int i=0; i<n1; i++){
    //     int current=0;
    //     for(int j=i; j<n1; j++){
    //         current = A[j] + current; 
    //     }
    //     cout<<current<<endl;
    // }
    
    return 0;
}