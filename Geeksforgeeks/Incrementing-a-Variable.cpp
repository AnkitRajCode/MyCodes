// https://practice.geeksforgeeks.org/problems/c-pointers-set-1introduction/1
#include<bits/stdc++.h>
using namespace std;

void updateVar(int *n){
    int z= *n+=10;
    cout<<z;
}

int main(){
    int n;
    cin >> n;

    updateVar(&n);
}