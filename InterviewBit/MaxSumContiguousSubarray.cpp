// https://www.interviewbit.com/problems/max-sum-contiguous-subarray/
// Time Complexity : O(n)

#include <bits/stdc++.h>
using namespace std;
int maxSubArray(const vector<int> &A) {
    int currentSum = 0;
    int maxSum = -1001;
    int maxEle=-1001;
    for(int i=0; i<A.size(); i++){
        currentSum+=A[i];

        if(currentSum<0){
            currentSum = 0;
        }
        // maxSum = max(maxSum,currentSum) ;
        if(currentSum>maxSum) {
            maxSum=currentSum;
        }
        if (A[i]>maxEle){
            maxEle=A[i];
        }
    }

    if(maxSum==0){
        //FIXME: we cannot use sort algo directly in interview bit :: while we have vector as in const 
        // sort(A.begin(),A.end());
        // maxSum=A[A.size()-1];
        return maxEle;
    }
    return maxSum;
}

int main(){
    int n; cin>>n;
    vector<int> a(n);
    for(int i=0;i<n;i++) cin>>a[i];
    cout<<maxSubArray(a);
    return 0;
}

// TODO: Brute force approch
// #include<iostream>
// using namespace std;

// int main(){
//     int n;
    
//     cout<<"Enter size of array: ";
//     cin>>n;
//     int arr[n];

//     cout<<"Enter Elements: ";
//     for(int i=0; i<n; i++){
//         cin>>arr[i];
//     }

//     int more = INT_MIN;

//     for(int i=0; i<n; i++){
//         int current=0;
//         for(int j=i; j<n; j++){
//             current = arr[j]+current;
//             cout<<current<<endl;
//             more = max(current, more);
//         }
//     }

//     cout<<more<<" answer"<<endl;
// }