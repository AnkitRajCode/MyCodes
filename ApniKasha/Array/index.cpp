#include<iostream>
using namespace std;

int main(){
    int n;
    
    cout<<"Enter size of array: ";
    cin>>n;
    int arr[n];

    cout<<"Enter Elements: ";
    for(int i=0; i<n; i++){
        cin>>arr[i];
    }

    int count = 1 ;
    int result =0;
    while (count<=n)
    {
        int current=0;
        for(int i=0; i<count; i++){
            current = arr[i]+current;
        }
        cout<<current<<endl;
        result = result + current;
        count++;
    }
    cout<<result;
    

    return 0;
}