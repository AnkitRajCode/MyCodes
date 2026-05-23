package Sorting;

public class bubbleSort {

    public static void main(String[] args) {
        int nums[] = { 9, 1, 8, 2, 7, 3, 6, 4, 5 };

        bubbleSort(nums);

        for (int i : nums) {
            System.out.print(i + " ");
        }
    }

    public static void bubbleSort(int nums[]) {
        for (int i = 0; i < nums.length - 1; i++) {
            for (int j = 0; j < nums.length - i - 1; j++) {
                if (nums[j] > nums[j + 1]) {
                    int temp = nums[j];
                    nums[j] = nums[j + 1];
                    nums[j + 1] = temp;
                }
            }
        }
    }
}