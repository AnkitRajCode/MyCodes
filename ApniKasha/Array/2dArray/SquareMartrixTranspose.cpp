#include <iostream>
using namespace std;

int main(){
    int n;
    cin>>n;

    int A[n][n];

    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            cin>>A[i][j];
        }
    }
    // int A[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};

    for(int i=0; i<3; i++){
        for(int j=i; j<3; j++){
            //Swap
            int temp = A[i][j];
            A[i][j] = A[j][i];
            A[j][i] = temp;
        }
    }

    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            cout<<A[i][j]<<" ";
        }
        cout<<endl;
    }
    return 0;
}