class Solution {
public:
    vector<int> productExceptSelf(vector<int>& nums) {
        int temp=1;
        int zero=0;
        int h = nums.size();
        for(int i =0; i<h; ++i ){
            if(nums[i]!=0) temp = nums[i]*temp;
            else zero++;
        }
        
        vector<int> a;
        for(int j=0; j<h; ++j){
            if(zero>1) a.push_back(0);
            else if(zero==1 && nums[j]!=0) a.push_back(0);
            else if(zero==1 && nums[j]==0) a.push_back(temp); 
            else a.push_back(temp/nums[j]);
        }
        
        return a;
    }
};