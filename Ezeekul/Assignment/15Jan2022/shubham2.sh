#!/bin/bash
#Desc: This code is used to remove single line and multi-line comment in c file
#Algo: Using command line args I took c program file which sigle line and multi line comments are there using sed i perfoem bvasic text transformation on input stream by detecting '//' and '/* */' in my c program file. $first denoting starting of multi-line comment and $last denoting ending of multi-line comment, using regexp replacement has be performed. 
#Run: bash Question2.sh < filename.c > 
file="$1"
first="\/\*"
last="\*\/"
sed "/$first/,/$last/d;s/$first.$last//g;/^\//d;s/\/.*//" $file