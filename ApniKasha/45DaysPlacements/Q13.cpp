class Solution {
public:
    int maxProduct(vector<int>& nums) {
        int currentProduct = 1;
        for(int i=0; i<nums.size(); i++){
            currentProduct = currentProduct * nums[i];

            if(currentSum<0){
                currentSum = 0;
            }
            if(currentSum>maxSum) {
                maxSum=currentSum;
            }
            if (nums[i]>maxEle){
                maxEle=nums[i];
            }
        }
        if(maxSum==0){
            return 0;
        }
        return maxEle;
    }
};