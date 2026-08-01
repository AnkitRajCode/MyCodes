package MyJava.starPatterns;

import java.util.*;

public class reverseNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the number: ");
        int n = sc.nextInt();

       for(int j=n; j>0; j--){
            for(int i=1;i<=j;i++){
                System.out.print(i);
            }
            System.out.println();
        }
    }
}