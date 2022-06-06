class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int currentSum = 0;
        int maxSum = INT_MIN;
        int maxEle= INT_MIN;
        for(int i=0; i<nums.size(); i++){
            currentSum+=nums[i];

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
            return maxEle;
        }
    return maxSum;
}
};