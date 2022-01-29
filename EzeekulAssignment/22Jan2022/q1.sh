#!/bin/bash

#Desc: This code is used to produce pstree output.

#Algo: First, we are going to get the process id of the parent process. Then, we are going to get the process ids of all the processes from the /proc directory. Reading the output of the command ps -axf | grep $pid reading the idnumber.txt file and storing the parent process's process id in an array print the process id of the word for each process id in the array and redirect the output to the output3.txt file.

#Run: bash q1.sh

sdir=/proc/
for entry in "$sdir"/*
do
    echo $entry >> id.txt
    echo $(grep -Eo '[0-9\.]+' id.txt) > idnumber.txt
done
echo "idnumber.txt file for process id of parent process"

declare -a array

while read -r line;
do
    for word in $line
    do
        array+=("$(echo $word)")
    done
done < idnumber.txt
for i in "${array[@]}"
do
    echo $i | ps -axf | grep "$i" >> output.txt
done

echo "1. cat output.txt of Tree Stucture"
echo "2. cat idnumber.txt for process id of parent process"
echo "3. cat id.txt for process id of all the process from /proc directory"