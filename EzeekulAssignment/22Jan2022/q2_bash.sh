#!/bin/bash

#Desc: This code is used to find longest word in a file.

#Algo: Script to find longest word in file , taking file through command line args then declaring two variables, one for longest word and one for length of longest word, then using while loop I m reading line by line then I declare tempemorary variable to store that particular line then using for loop I m check(reading) word by word storing word length in len and checking if length of word is equal to long then append word to long word if not then I m checking if length of word is greater than long word then I m replacing long word with word then I m printing long word and length of word. 

#Run: bash q2_bash.sh filename.txt 

file=$1
res=''
long=0
while read line; do
        temp=$line

        for w in $temp
        do
            len=${#w}
            if (( len == long ))
                then    lw+=' & '
                lw+=$w
                fi
            if (( len > long ))
            then
                long=$len
                lw=$w
            fi
        done
done < $file
printf 'The longest word is %s \n' "$lw"
printf 'Its length is %d' "$long"
echo $res