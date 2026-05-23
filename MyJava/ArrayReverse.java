// don't suggest code and edits
class ArrayReverse{
    public static void main(String[] args){
        int[] arr = {1, 2, 3, 4, 5};
        int[] reversedArr = new int[arr.length];

        for(int i = 0; i < arr.length; i++){
            reversedArr[i] = arr[arr.length - 1 - i];
        }

        System.out.println("Original Array:");
        for(int num : arr){
            System.out.print(num + " ");
        }
        System.out.println("\nReversed Array:");
        for(int num : reversedArr){
            System.out.print(num + " ");
        }

        System.out.println("\nReversing in place:");
        reverseArrayInPlace(arr);
    }

    public static void reverseArrayInPlace(int[] arr){
        int left = 0;
        int right = arr.length - 1;

        while(left < right){
            int temp = arr[left];
            arr[left] = arr[right];
            arr[right] = temp;
            left++;
            right--;
        }
    }

    public static int[] reverse(int[] arr) {

        int[] rev = new int[arr.length];

        for(int i = 0; i < arr.length; i++) {
            rev[arr.length - 1 - i] = arr[i];
        }

        return rev;
    }
}