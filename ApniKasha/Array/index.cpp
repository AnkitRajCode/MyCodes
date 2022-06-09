#include<iostream>
#include<algorithm>
#include<math.h>
#include<bits/stdc++.h>
#include<vector>
using namespace std;

int main(){
    int n,x;
    
    cout<<"Enter size of array: ";
    cin>>n;
    vector<int> A;

    cout<<"Enter Elements: ";
    for(int i=0; i<n; i++){
        cin>>x;
        A.push_back(x);
    }

    sort(A.begin(),A.end());
    int check = 0 ;
    int ans = 0;
    for(int i=0; i<A.size(); ++i){
        if(A[i]==A[i+1]){
            check = A[i];
        }
        else if(A[i+1]!=A[i]+1){
            ans = A[i+1]+1;
        }
    };

    cout<<check<<"space"<<ans<<endl;

}