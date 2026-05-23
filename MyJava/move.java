public class move {
    public static void main(String[] args) {
        int[] arr = {-12, 11, -13, -5, 6, -7, 5, -3, -6};
        int[] newArr = moveNegAndPositive(arr);
        System.out.println("Original Array:");
        for(int num : arr){
            System.out.print(num + " ");
        }
        System.out.println();
        System.out.println("Array after moving negatives to the left:");
        for(int num : newArr){
            System.out.print(num + " ");
        }
    }

    public static int[] moveNegAndPositive(int[] arr) {
        int A = 0;
        int B = arr.length-1;

        int[] newArr = new int[arr.length];

        for(int a: arr){
            if(a<0){
                newArr[A] = a;
                A++;
            }else{
                newArr[B] = a;
                B--;
            }
        }
            

        return newArr;
    }
}
