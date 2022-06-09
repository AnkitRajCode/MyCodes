// QUESTION:  https://leetcode.com/problems/best-time-to-buy-and-sell-stock/submissions/
// NOTE: burte force Approch

#include<iostream>
#include<algorithm>
#include<math.h>
#include<bits/stdc++.h>
#include<vector>
using namespace std;

int main(){
    int n,x;
    
    cout<<"Enter size of array: ";
    cin>>n;
    vector<int> prices;

    cout<<"Enter Elements: ";
    for(int i=0; i<n; i++){
        cin>>x;
        prices.push_back(x);
    }
    int buy = INT_MAX;
    int sell = 0;
    int check = -1;
    for(int i=0; i<prices.size(); ++i){
        if(prices[i]<buy){
            buy = prices[i];
            check = i ;
        }        
    }
    for(int j = check; j<=prices.size()-check; ++j){
        if(prices[j]>sell){
            sell = prices[j];
        }
    }

    int profit = 0;
    if(sell>buy){
        profit = sell - buy ;
    }
    
    cout<< profit <<endl;
}

// NOTE: Optimize solution
class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int temp= INT_MAX;
        int res=0;
        
        for(int i=0; i<prices.size(); i++){
            temp = min(temp, prices[i]);
            res = max(res, prices[i]-temp);
        }
        
        return res;
    }
};

