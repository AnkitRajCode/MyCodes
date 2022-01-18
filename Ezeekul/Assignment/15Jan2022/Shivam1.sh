#!/bin/bash
if [ "${1: -4}" == ".txt" ]
	then
		file=$1
		s=''
		while read line; do
			temp=$line
			for (( i=0; i<${#temp}; i++ )); do
				if [[ "${temp:$i:1}" == "a" || "${temp:$i:1}" == "A" ]]
					then s+=".- "
				elif [[ "${temp:$i:1}" == "b" || "${temp:$i:1}" == "B" ]]
					then s+="-... "
				elif [[ "${temp:$i:1}" == "c" || "${temp:$i:1}" == "C" ]]
					then s+="-.-. "
				elif [[ "${temp:$i:1}" == "d" || "${temp:$i:1}" == "D" ]]
					then s+="-.. "
				elif [[ "${temp:$i:1}" == "e" || "${temp:$i:1}" == "E" ]]
					then s+=". "
				elif [[ "${temp:$i:1}" == "f" || "${temp:$i:1}" == "F" ]]
					then s+="..-. "
				elif [[ "${temp:$i:1}" == "g" || "${temp:$i:1}" == "G" ]]
					then s+="--. "
				elif [[ "${temp:$i:1}" == "h" || "${temp:$i:1}" == "H" ]]
					then s+=".... "
				elif [[ "${temp:$i:1}" == "i" || "${temp:$i:1}" == "I" ]]
					then s+=".. "
				elif [[ "${temp:$i:1}" == "j" || "${temp:$i:1}" == "J" ]]
					then s+=".--- "
				elif [[ "${temp:$i:1}" == "k" || "${temp:$i:1}" == "K" ]]
					then s+="-.- "
				elif [[ "${temp:$i:1}" == "l" || "${temp:$i:1}" == "L" ]]
					then s+=".-.. "
				elif [[ "${temp:$i:1}" == "m" || "${temp:$i:1}" == "M" ]]
					then s+="-- "
				elif [[ "${temp:$i:1}" == "n" || "${temp:$i:1}" == "N" ]]
					then s+="-. "
				elif [[ "${temp:$i:1}" == "o" || "${temp:$i:1}" == "O" ]]
					then s+="--- "
				elif [[ "${temp:$i:1}" == "p" || "${temp:$i:1}" == "P" ]]
					then s+=".--. "
				elif [[ "${temp:$i:1}" == "q" || "${temp:$i:1}" == "Q" ]]
					then s+="--.- "
				elif [[ "${temp:$i:1}" == "r" || "${temp:$i:1}" == "R" ]]
					then s+=".-. "
				elif [[ "${temp:$i:1}" == "s" || "${temp:$i:1}" == "S" ]]
					then s+="... "
				elif [[ "${temp:$i:1}" == "t" || "${temp:$i:1}" == "T" ]]
					then s+="- "
				elif [[ "${temp:$i:1}" == "u" || "${temp:$i:1}" == "U" ]]
					then s+="..- "
				elif [[ "${temp:$i:1}" == "v" || "${temp:$i:1}" == "V" ]]
					then s+="...- "
				elif [[ "${temp:$i:1}" == "w" || "${temp:$i:1}" == "W" ]]
					then s+=".-- "
				elif [[ "${temp:$i:1}" == "x" || "${temp:$i:1}" == "X" ]]
					then s+="-..- "
				elif [[ "${temp:$i:1}" == "y" || "${temp:$i:1}" == "Y" ]]
					then s+="-.-- "
				elif [[ "${temp:$i:1}" == "z" || "${temp:$i:1}" == "Z" ]]
					then s+="--.. "
				elif [[ "${temp:$i:1}" == "0" ]]
					then s+="----- "
				elif [[ "${temp:$i:1}" == "1" ]]
					then s+=".---- "
				elif [[ "${temp:$i:1}" == "2" ]]
					then s+="..--- "
				elif [[ "${temp:$i:1}" == "3" ]]
					then s+="...-- "
				elif [[ "${temp:$i:1}" == "4" ]]
					then s+="....- "
				elif [[ "${temp:$i:1}" == "5" ]]
					then s+="..... "
				elif [[ "${temp:$i:1}" == "6" ]]
					then s+="-.... "
				elif [[ "${temp:$i:1}" == "7" ]]
					then s+="--... "
				elif [[ "${temp:$i:1}" == "8" ]]
					then s+="---.. "
				elif [[ "${temp:$i:1}" == "9" ]]
					then s+="----. "
				elif [[ "${temp:$i:1}" == "." ]]
					then s+=".-.-.- "
				elif [[ "${temp:$i:1}" == "," ]]
					then s+="--..-- "
				elif [[ "${temp:$i:1}" == "?" ]]
					then s+="..--.. "
				elif [[ "${temp:$i:1}" == "=" ]]
					then s+="-...- "
				elif [[ "${temp:$i:1}" == " " ]]
					then s+="/ "
				else
					echo "invalid character"
				fi
			done
			echo $s
			s=''
		done < $file

elif [ "${1: -6}" == ".morse" ]
	then
		file=$1
		while read line; do
			#echo $line
			temp=$line
			s=''
			t=''
			for (( i=0; i<${#temp}; i++ )); do
				if [[ "${temp:$i:1}" != " " && i+1 -lt ${#temp} ]]
					then s+="${temp:$i:1}"
				else
					if [[ i+1 -eq ${#temp} ]]
						then s+="${temp:$i:1}"
					fi
					if [[ "$s" == ".-" ]]
						then t+="a"
					elif [[ "$s" == "-..." ]]
						then t+="b"
					elif [[ "$s" == "-.-." ]]
						then t+="c"
					elif [[ "$s" == "-.." ]]
						then t+="d"
					elif [[ "$s" == "." ]]
						then t+="e"
					elif [[ "$s" == "..-." ]]
						then t+="f"
					elif [[ "$s" == "--." ]]
						then t+="g"
					elif [[ "$s" == "...." ]]
						then t+="h"
					elif [[ "$s" == ".." ]]
						then t+="i"
					elif [[ "$s" == ".---" ]]
						then t+="j"
					elif [[ "$s" == "-.-" ]]
						then t+="k"
					elif [[ "$s" == ".-.." ]]
						then t+="l"
					elif [[ "$s" == "--" ]]
						then t+="m"
					elif [[ "$s" == "-." ]]
						then t+="n"
					elif [[ "$s" == "---" ]]
						then t+="o"
					elif [[ "$s" == ".--." ]]
						then t+="p"
					elif [[ "$s" == "--.-" ]]
						then t+="q"
					elif [[ "$s" == ".-." ]]
						then t+="r"
					elif [[ "$s" == "..." ]]
						then t+="s"
					elif [[ "$s" == "-" ]]
						then t+="t"
					elif [[ "$s" == "..-" ]]
						then t+="u"
					elif [[ "$s" == "...-" ]]
						then t+="v"
					elif [[ "$s" == ".--" ]]
						then t+="w"
					elif [[ "$s" == "-..-" ]]
						then t+="x"
					elif [[ "$s" == "-.--" ]]
						then t+="y"
					elif [[ "$s" == "--.." ]]
						then t+="z"
					elif [[ "$s" == "-----" ]]
						then t+="0"
					elif [[ "$s" == ".----" ]]
						then t+="1"
					elif [[ "$s" == "..---" ]]
						then t+="2"
					elif [[ "$s" == "...--" ]]
						then t+="3"
					elif [[ "$s" == "....-" ]]
						then t+="4"
					elif [[ "$s" == "....." ]]
						then t+="5"
					elif [[ "$s" == "-...." ]]
						then t+="6"
					elif [[ "$s" == "--..." ]]
						then t+="7"
					elif [[ "$s" == "---.." ]]
						then t+="8"
					elif [[ "$s" == "----." ]]
						then t+="9"
					elif [[ "$s" == ".-.-.-" ]]
						then t+="."
					elif [[ "$s" == "--..--" ]]
						then t+=","
					elif [[ "$s" == "..--.." ]]
						then t+="?"
					elif [[ "$s" == "-...-" ]]
						then t+="="
					elif [[ "$s" == "/" ]]
						then t+=" "
					fi
					s=''
				fi
			
			done
			echo $t
		done < $file
			
else
	echo "Invalid file"
fi