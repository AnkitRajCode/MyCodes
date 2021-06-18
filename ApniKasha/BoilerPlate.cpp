//Boiler plate code
#include <iostream>
#include <math.h> // for calling math functions 
using namespace std;

int main(){
    int n;
    cin>>n;

    return 0;
}

//Boiler plate code for input output in txt 
#include <iostream>
using namespace std;

int main(){
    #ifndef ONLINE_JUDGE
        freopen("input.txt","r",stdin);
        freopen("output.txt","w",stdout);
    #endif

    int n;
    cin>>n;

    return 0;
}

//Boilerplate code for pattern Question
#include <iostream>
using namespace std;

int main(){
    int n;
    cin>>n;

    for(int i=1; i<=n; i++){
        for(int j=1; j<=i; j++){
        }
        cout<<endl;
    }

    return 0;
}

// boiler plate code for array
#include <bits/stdc++.h> // when you will use this the no other library is require
#include <iostream>
#include <climits>
using namespace std;

int main(){
    int n;
    cin>>n;

    int arr[n];

    for(int i=0; i<n; i++){
        cin>>arr[i];
    }
    return 0;
}

// 2D Array bolier Plate Code
#include <bits/stdc++.h> // when you will use this the no other library is require
#include <iostream>
#include <climits>
using namespace std;

int main(){
    int n,m;
    cin>>n>>m;

    int arr[n][m];

    for(int i=0; i<n; i++){
        for(int j=0; j<m; j++){
            cin>>arr[i][j];
        }
    }
    return 0;
}

//output of 2D array
// for(int i=0; i<n; i++){
//     for(int j=0; j<m; j++){
//         cout<<arr[i][j]<<" ";
//     }
//     cout<<"endl";
// }