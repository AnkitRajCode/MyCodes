#include<iostream>
#include<vector>
using namespace std;

int main(){
    vector<int>v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    for(int i=0; i<v.size(); i++){
        cout<<v[i]<<endl;
    }//OUTPUT: 1 2 3

    // Iterator
    vector<int>::iterator it;
    for(it=v.begin();it!=v.end();it++){
        cout<<*it<<endl;
    }//OUTPUT: 1 2 3

    // Travese
    for(auto element:v){
        cout<<element<<endl;
    }//OUTPUT: 1 2 3

    v.pop_back(); //pop_back function last element vector sai nikal deta hai 
    //now if we will cout then we will get OUTPUT: 1 2

    vector<int> v2 (3,50);
    //v2 vector Assign value is : 50 50 50


    // before swapping value of
    // v  : 1 2
    // v2 : 50 50 50
    swap(v,v2);
    for(auto element:v){
        cout<<element<<endl;
    }
     for(auto element:v2){
        cout<<element<<endl;
    }
    // after swapping value of
    // v  : 50 50 50
    // v2 : 1 2


    // Sort(v.begin(),v.end());
    // we use this to short vectors

    // std::pair is STL value use to store values in pair
}