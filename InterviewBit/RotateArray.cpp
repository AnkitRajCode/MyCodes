#include<bits/stdc++.h>
using namespace std;


int main(){
    int n;
    cin>>n;
    int A[n][n];

    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            cin>>A[i][j];
        }
    }
    // for(int i=0;i<n;i++){
    //     for(int j=0;j<n;j++){
    //         cout<<A[i][j];
    //     }
    //     cout<<endl;
    // }

    for(int i=0;i<n;i++){
        for(int j=0; j<n; j++){
            
            swap(A[i][j],A[j][i]);
        }
    }
    
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            cout<<A[i][j];
        }
        cout<<endl;
    }

}