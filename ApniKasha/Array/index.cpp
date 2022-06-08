#include<iostream>
#include<algorithm>
#include<math.h>
#include<bits/stdc++.h>
#include<vector>
using namespace std;

int main(){
    int n,m,x;
    
    cout<<"Enter size of array: ";
    cin>>n;
    vector<int> a;

    cout<<"Enter Elements: ";
    for(int i=0; i<n; i++){
        cin>>x;
        a.push_back(x);
    }

    cout<<"no of student: ";
    cin>>m;

    int diff=0;
    int mindiff=INT_MAX;
    sort(a.begin(),a.end());
    
    for(int i=0; i<n-m;i++){
        diff = a[i+m-1]-a[i];
        mindiff = min(diff,mindiff);
    }
    
    cout<<mindiff<<endl;
}