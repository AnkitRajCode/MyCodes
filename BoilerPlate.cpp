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

//TODO: PATTERN
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

//TODO: ARRAY
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

//TODO: POINTER
#include <iostream>
using namespace std;

int main(){

    int a = 10;
    int *aptr;
    aptr = &a;

    cout<< &a << endl;
    cout<< aptr << endl;
    cout<< *aptr << endl;
    return 0;
}


// TODO: STRING
#include<iostream>
#include<string>
#include<algorithm>

using namespace std;

int main(){
    string str;
    cin>> str;
    cout<< str;

    return 0;
}

// TODO: Backtracking
// Backtracking is an algorithmic-technique for solving recursive problems by tring to build every
// posssible solution incrementally and removing those solutions thst fail to satisy the constraints
// of the problem at any point of time.

