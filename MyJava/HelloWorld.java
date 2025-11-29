import java.lang.*;
// "lang" is a package it is basic package 
// If we don't import it automatically it get imported in our program
// What this package is conatining ? It is conatining "System.out.println"

// Every java program is in form of a class there is nothing outside classes in JAVA
// Main class name should be same as file name
// public class MyFirst { // public keyword means that the main method can be accessed from any other class 
class MyFirst{
    // main method
    // return type is void
    public static void main(String args[]){
        // its is use for printing
        System.out.println("Hello World");
        System.out.println(args[0]);
        System.out.println(args[1]);
    }
}


// javac means java-complier
// for compile use javac MyFirst.java
// It will create a file called First.class
// NOTE: MyFirst.class will contain C file "bit code"
//  then use Java MyFirst it will run the file

// As we know JVM is interpertor it will convert bitcode into  machine code and it will execute a programme

// "public" : So that it can be accessable from this class to JVM when it call main()
// "Static" : we cannot use class unless we created a object 
//            if we want to create any thing without using a object in class that can be achieve by declaring "static"


// during time of running my this code 
// compling : javac MyFirst
// execution : java MyFirst Ankit RAJ 
// then it will not will any error in terminal because it require two arguments