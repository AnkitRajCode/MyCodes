package MyJava.starPatterns;

import java.util.Scanner;

public class reverseStarStair {
    
        public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the number: ");
        int n = sc.nextInt();

        for(int j=n; j>0; j--){
            for(int i=j;i>0;i--){
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
