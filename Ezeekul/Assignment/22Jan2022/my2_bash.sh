#!/bin/bash
#Desc: This code is used to find longest word in a file.
#Algo: Script to find longest word in file , taking file through command line args then using while loop i m check it word by word and finally printing all the long word with same charcter count. 
#Run: bash q2.sh filename.txt 

file=$1
res=''
long=0
while read line; do
	temp=$line

	for w in $temp
	do
	    len=${#w}
	    if (( len == long ))
	    	then	lw+=' & ' 
	    	lw+=$w
	    	fi
	    if (( len > long ))
	    then
	        long=$len
	        lw=$w
	    fi
	done
done < $file
printf 'The longest word is %s \n' "$longword"
printf 'Its length is %d' "$longest"
echo $res