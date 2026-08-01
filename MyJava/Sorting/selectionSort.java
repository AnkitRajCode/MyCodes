package Sorting;

public class selectionSort {
    
    public static void main(String[] args) {
        int nums[] = {9,1,8,2,7,3,6,4,5};
        
        selectionSort(nums);
        
        for(int i :nums){
            System.out.print(i+" ");
        }
    }
    
    public static void selectionSort(int nums[]){
        for(int i=0;i<nums.length-1;i++){
            int min = i;
            for(int j = i; j<nums.length;j++){
                if(nums[min] > nums[j]){
                    min = j;
                }
            }
            int temp = nums[i];
            nums[i] = nums[min];
            nums[min] = temp;
        }
    }
}