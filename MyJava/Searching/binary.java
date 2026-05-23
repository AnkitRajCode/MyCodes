package Searching;

class binary{
    
    public static void main(String[] args) {
        int[] nums = {10,20,30,40,50,60,70,80,89,100};
        
        int index = binarySearch(nums, 89);
        
        if(index == -1){
            System.out.println("Not found");
        }else{
            System.out.println("found at "+ index);
        }
    }
    
    public static int binarySearch(int[] nums, int target){
        int low = 0;
        int high = nums.length-1;
        
        while(low<=high){
            int middle = low + (high-low)/2;
            System.out.println("middle: " + middle);
            
            if(nums[middle] > target) high = middle-1;
            else if(nums[middle] < target) low = middle +1;
            else return middle;
        }
        
        return -1;
    }
}