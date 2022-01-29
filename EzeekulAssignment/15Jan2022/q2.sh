#!/bin/bash

#Desc: This code is used to remove single line and multi-line comment in c file.

#Algo: Using command line args I took c program filein which single line and multi line comments are there so after matching file extension using regex then I have taken two bool variable one for checking multi line and another for checking double qoutation then one temp variable to store string , while loop is reading line and for loop for reading character then in first conditional statement I m checking for double qoutation start and end,then next conditional statement is checking if double slash is not under qoutation then that line will be removed then for multiline again checking for /* and */ then removing code written in this rest storing in temp variable and at last priting code after removing comment . 

#Run: bash Question2.sh < filename.c >

file=$1
if [[ $file =~ ".c" ]]
then
	temp=''
	multi_com=false
	check_flag=false
	while read line; do
		word=$line
		for (( i=0; i<${#word}; i++ )); do
			if [[ "${word:$i:1}" == '"' && $check_flag == false ]]
				then check_flag=true
			elif [[ "${word:$i:1}" == '"' && $check_flag == true  ]]
				then check_flag=false
			fi
			if [[ $check_flag == false && "${word:$i:2}" == "//"  ]]
				then break
			fi
			if [[ $check_flag == false ]]
				then
				if [[ "${word:$i:2}" == "/*" && $multi_com == false ]]
					then multi_com=true
				elif [[ "${word:$i:2}" == "*/" && $multi_com == true ]]
					then 
					multi_com=false
					i=$((i + 2))
			fi
		fi
			if [[ $multi_com == false ]]
				then temp+="${word:$i:1}"
			fi
		done
		if [[ $temp != '' ]]
			then echo $temp
			temp=''
		fi
	done < $file
fi