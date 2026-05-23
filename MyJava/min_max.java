class min_max{
    public static void main(String[] args) {
        int[] arr = {5, 2, 9, 1, 5, 6};
        // int min = arr[0];
        // int max = arr[0];

        // for (int i = 1; i < arr.length; i++) {
        //     if (arr[i] < min) {
        //         min = arr[i];
        //     }
        //     if (arr[i] > max) {
        //         max = arr[i];
        //     }
        // }

        // System.out.println("Minimum value: " + min);
        // System.out.println("Maximum value: " + max);

        int[] minMax = findMinMax(arr);
        System.out.println("Minimum value: " + minMax[0]);
        System.out.println("Maximum value: " + minMax[1]);
    }

    public static int[] findMinMax(int[] arr) {
        int min = arr[0];
        int max = arr[0];

        for(int a:arr){
            min = Math.min(min,a);
            max = Math.max(max,a);
        }
        
        return new int[] {min,max};
    }
}