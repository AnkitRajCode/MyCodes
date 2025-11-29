import java.lang.*;
import java.util.*;

class Keyboard{
    public static void main(String args[]){
        Scanner s = new Scanner(System.in);
        int a,b,c;
        System.out.println("Enter two no's:");
        a = s.nextInt();
        b = s.nextInt();
        c = a+b;
        System.out.println("Sum is " + c);
    }
}
 
// Scanner is present in util package of java
// version 5 onwards this version is provided

// "System.in" is to take input and it is associated with keyboard i.e. its works as a pipe to take input 
