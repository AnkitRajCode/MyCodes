search_dir=/proc/ # directory to search
for entry in "$search_dir"/* # for each entry in the directory
do  
 echo $entry >> output.txt # print the entry to the output file
 echo $(grep -Eo '[0-9\.]+' output.txt) > output2.txt # grep the entry for numbers
done
echo "Output2.txt file for process id of parent process" # print the output file

declare -a array # declare an array

while read -r line; # read each line from the output file
do
    for word in $line # for each word in the line
    do
        array+=("$(echo $word)") # add the word to the array
    done
done < output2.txt # read the output file
 
for i in "${array[@]}" # for each word in the array
do  # for each word in the array
    # kill $i
    echo $i | ps -axf | grep "$i"  # print the process id of the word
    
    
done # end of for loop

echo "1. cat output3.txt of Tree Stucture" # print the output file
echo "2. cat output2.txt for process id of parent process" #    print the output file
echo "3. cat output.txt for process id of all the process from /proc directory" # print the output file