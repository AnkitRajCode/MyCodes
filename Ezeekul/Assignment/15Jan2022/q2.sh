#!/bin/bash
if [[ "$1" =~ ".c" ]]
	then
		file=$1
		comm_start=false
		res=''
		while read line; do
			temp=$line
			for (( i=0; i<${#temp}; i++ )); do
				if [[ "${temp:$i:2}" == "//" ]]
					then 
                    if [[ "${temp:$i:1}" == "\"" ]]
                    then
                        res+="${temp:$i:1}"
                    else 
                    break
                    fi
				elif [[ "${temp:$i:2}" == "/*" ]]
					then comm_start=true
				elif [[ "${temp:$i:2}" == "*/" ]]
					then comm_start=false
				fi
				if [[ $comm_start == true ]]
					then continue
				elif [[ "${temp:$i:1}" == "*" || "${temp:$i:1}" == "/" ]]
						then continue
					else
						res+="${temp:$i:1}"
                
				fi
			done
			if [[ $res != '' ]]
				then echo $res
				res=''
			fi
		done < $file
		
fi