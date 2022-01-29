#!/bin/bash

#Desc: This code is used to find longest word in a file.

#Algo: sed is use to remove space from each line and replace it by /n so that arrangement in the file will be such that one word will be there in every new line then I am sorting the file in such manner so that the word with the smallest length will come first and the word with the largest length will come last then I am using uniq to remove duplicate word in the file and then using awk to find the length of each word in the file then I am using sort command to sort the file in descending order and then I am using head command to extract the first word and print with the length of the word.

#Run: bash q2_sed.sh filename.txt

sed 's/ /\n/g' $1 | sort | uniq | awk '{print length, $0}' | sort -nr | head -n 1 