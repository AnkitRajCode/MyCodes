#!/bin/bash
#Desc: This code is used to convert text to morse code and morse code to text.
#Algo: first I take command through command line args then using regex I detect .text / .morse
#		extension then using if-else operation i trigger function in it and previously I store all morse code
#		in morse array with there respective charater and vice versa for text array then 
#		in function using while loop and reading each charater and stoeing in x variable then changing every
#		charater to morse code and vise versa
#Run: bash Question1.sh < filename.txt/filename.morse > 

declare -A MORSE_CODE=(["A"]=".-" ["B"]="-..." ["C"]="-.-." ["D"]="-.." ["E"]="." ["F"]="..-." ["G"]="--." ["H"]="...." ["I"]=".." ["J"]=".---" ["K"]="-.-" ["L"]=".-.." ["M"]="--" ["N"]="-." ["O"]="---" ["P"]=".--." ["Q"]="--.-" ["R"]=".-." ["S"]="..." ["T"]="-" ["U"]="..-" ["V"]="...-" ["W"]=".--" ["X"]="-..-" ["Y"]="-.--" ["Z"]="--.." ["0"]="-----" ["1"]=".----" ["2"]="..---" ["3"]="...--" ["4"]="....-" ["5"]="....." ["6"]="-...." ["7"]="--..." ["8"]="---.." ["9"]="----." ["."]=".-.-.-" [","]="--.--" ["?"]="..--.." ["="]="-...-")

declare -A TEXT_MAP=([".-"]="A" ["-..."]="B" ["-.-."]="C" ["-.."]="-D" ["."]="E" ["..-."]="F" ["--."]="G" ["...."]="H" [".."]="I" [".---"]="J" ["-.-"]="K" [".-.."]="L" ["--"]="M" ["-."]="N" ["---"]="O" [".--."]="P" ["--.-"]="Q" [".-."]="R" ["..."]="S" ["-"]="T" ["..-"]="U" ["...-"]=".V" [".--"]="W" ["-..-"]="X" ["-.--"]="Y" ["--.."]="Z" ["-----"]="0" [".----"]="1" ["..---"]="2" ["...--"]="3" ["....-"]="4" ["....."]="5" ["-...."]="6" ["--..."]="7" ["---.."]="8" ["----."]="9" [".-.-.-"]="." ["--.--"]="," ["..--.."]="?" ["-...-"]="=")


TARGET_FILE="$1"

TO_MORSE(){
	while read -n1 x;
       	do
		if [[ "$x" == [A-Z] || "$x" == [0-9] ]];then
			echo "${MORSE_CODE[$x]}"
		fi
	done < $1
}

TO_TEXT(){
	while read -n1 x;
       	do
		if [[ "$x" == [A-Z] || "$x" == [0-9] ]];then
			echo "${TEXT_MAP[$x]}"
		fi
	done < $1
}

if [[ "$TARGET_FILE" =~ ".morse" ]];then
	echo "Morse code to text:";
	TO_TEXT "$TARGET_FILE"
elif [[ "$TARGET_FILE" =~ ".txt" ]];then
	echo "Text to Morse code:";
	TO_MORSE "$TARGET_FILE"
fi