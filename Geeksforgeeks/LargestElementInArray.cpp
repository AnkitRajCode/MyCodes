// https://practice.geeksforgeeks.org/problems/largest-element-in-array4009/1/?difficulty[]=-2&difficulty[]=-1&difficulty[]=0&page=1&category[]=Arrays&category[]=CPP&query=difficulty[]-2difficulty[]-1difficulty[]0page1category[]Arrayscategory[]CPP

#include<bits/stdc++.h>
using namespace std;

int largestElement(int a[], int n) {
    sort(a,a+n); // sort function ka time complexity by deflaute O(nlogn)[merge sort ka shif]
    return a[n-1];
}

int main(){
    int n;
    cin >> n;
    int a[n];

    for(int i =0; i<n ; i++){
        cin >> a[i];
    }

    cout<<largestElement(a,n)<<endl;
}

// geeks for geeks approch for time complexity O(n)
// int largest(vector<int> &arr, int n)
// {
//     int temp=INT_MIN;
//     // sort(arr.begin,arr.end); 
//     for (int i =0 ; i<n; i++){
    
//         if(arr[i]>temp){
//             temp = arr[i];
//         }
//     }
//     return temp;
// }

// Ashish
// int largest(int a[] , int n){
// 	return *max_element(a, a+n);

// }

// int main(){
//     int n;
//     cin >> n;
//     int a[n];

//     for(int i = 0 ; i < n ; ++i){
//     	cin >> a[i];
//     }

//     n = sizeof(a)/sizeof(a[0]);
//     cout << largest(a,n);

//     return 0;
// }