```
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
```

## Class Scanner
nextInt()
nextFloat()
nextDouble()
### To read string or set of character
next() --> read single word

nextLine() --> read multiple words
## Datatypes
nextByte()
nextShort()
nextLong()
nextBoolean()
## confirm weather upcoming value is integer or not
> (It return boolean value true or false)
hasNextInt()
hasNextFloat()

