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