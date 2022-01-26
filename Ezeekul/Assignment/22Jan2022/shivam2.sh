#!bin/bash

file=$1
max=0
res=''
longest=0
while read line; do
	temp=$line

	for word in $temp
	do
	    len=${#word}
	    if (( len == longest ))
	    	then	longword+=' & ' 
	    	longword+=$word
	    	fi
	    if (( len > longest ))
	    then
	        longest=$len
	        longword=$word
	    fi
	done
done < $file
printf 'The longest word is %s and its length is %d.\n' "$longword" "$longest"
echo $res