// 8.6 Subarray - Challenges 21:00min 
// max subarray sum = total sum of array -  sum of non-contributing elements
#include <iostream>
#include <climits>
using namespace std;

int kadane(int arr[], int n){
    int currentSum = 0;
    int maxSum = INT_MIN;

    for(int i=0; i<n; i++){
        currentSum+=arr[i];

        if(currentSum<0){
            currentSum = 0;
        }
        maxSum = max(maxSum,currentSum) ;
    }
    return maxSum;
}

int main(){
    int n;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }
    int wrapsum;  
    int nonwrapsum; 

    nonwrapsum = kadane(arr,n);
    int totalSum = 0;
    for(int i=0 ; i<n; i++){
        totalSum+=arr[i];
        arr[i]=-arr[i];
    }

    wrapsum = totalSum + kadane(arr,n); //warpsum = totalSum - (-kadane(arr,n))

    cout<<max(wrapsum,nonwrapsum)<<endl;

    return 0;
}