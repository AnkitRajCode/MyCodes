import java.util.Scanner;

public class print {
    public static void main(String[] args){
        Scanner myObj = new Scanner(System.in);
        System.out.println("Enter a number");
        int num = myObj.nextInt();

        if(num%3==0){
            System.out.print("Hello ");
        }
        if(num%5==0){
            System.out.print("World");
        }
    }
}

// NOTE: Do no put else or else if in the above code 