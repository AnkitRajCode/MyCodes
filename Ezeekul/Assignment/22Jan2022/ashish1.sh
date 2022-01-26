search_dir=/proc/
for entry in "$search_dir"/*
do 
 echo "$entry"| awk '{ print substr( $0, 8 ) }'  >> output.txt
 echo $(grep -Eo '[0-9\.]+' output.txt) > output2.txt
done