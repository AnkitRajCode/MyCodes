#include "bits/stdc++.h" // when you will use this the no other library is require
using namespace std;

int32_t main(){
    int n,m;
    cin>>n>>m;
    int target;
    cin>>target;

    int mat[n][m];

    for(int i=0; i<n; i++){
        for(int j=0; j<m; j++){
            cin>>mat[i][j];
        }
    }

    // now let go to top right position we can also start from bottom left
    bool found =  false;
    int r = 0, c = n-1;
    while(r < m && c>=0){
        if(mat[r][c] == target){
            found = true;
        }
        // mat[r][c] > target ? c-- : r++ ;
        if(mat[r][c] > target){
            c--;
        }
        else{
            r++;
        }
    }
    if(found)
        cout<<"Element Found";
    else
        cout<<"Element Does not Exist";
    return 0;
}
