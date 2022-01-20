#!/bin/bash
#Desc: This code is used to convert text to morse code and morse code to text.
#Algo: ------
#Run: bash Question1.sh < filename.txt/filename.morse > 

FILE="$1"
CONVERT_TO_MORSE(){
    s=''
    while read -n1 x;
    do
        if [[ ${x^} == "A" ]];
        then s+=".- a" 
        elif [[ ${x^} == "B" ]];
        then  s+="-... b"
        elif [[ ${x^} == "C" ]];
        then    
        s+="-.-. c"
        elif [[ ${x^} == "D" ]];
        then 
        s+="-.. d"
        elif [[ ${x^} == "E" ]];
        then 
        s+=". e"
        elif [[ ${x^} == "F" ]];
        then 
        s+="..-. f"
        elif [[ ${x^} == "G" ]];
        then 
        s+="--. g"
        elif [[ ${x^} == "H" ]];
        then 
        s+=".... h"
        elif [[ ${x^} == "I" ]];
        then 
        s+=".. i"
        elif [[ ${x^} == "J" ]];
        then 
        s+=".--- j"
        elif [[ ${x^} == "K" ]];
        then 
        s+="-.- k"
        elif [[ ${x^} == "L" ]];
        then 
        s+=".-.. l"
        elif [[ ${x^} == "M" ]];
        then 
        s+="-- m"
        elif [[ ${x^} == "N" ]];
        then 
        s+="-. n"
        elif [[ ${x^} == "O" ]];
        then 
            s+="--- o"
        elif [[ ${x^} == "P" ]];
        then 
            s+=".--. p"
        elif [[ ${x^} == "Q" ]];
        then 
            s+="--.- q"
        elif [[ ${x^} == "R" ]];
        then 
            s+=".-. r"
        elif [[ ${x^} == "S" ]];
        then 
            s+="... s"
        elif [[ ${x^} == "T" ]];
        then 
            s+="- t"
        elif [[ ${x^} == "U" ]];
        then 
            s+="..- u"
        elif [[ ${x^} == "V" ]];
        then 
            s+="...- v"
        elif [[ ${x^} == "W" ]];
        then 
            s+=".-- w"
        elif [[ ${x^} == "X" ]];
        then 
            s+="-..- x"
        elif [[ ${x^} == "Y" ]];
        then 
            s+=".-.. y"
        elif [[ ${x^} == "Z" ]];
        then 
            s+="--.. z"
        elif [[ ${x^} == "0" ]];
        then 
            s+="----- " 
        elif [[ $x == "1" ]];
        then 
            s+=".---- "
        elif [[ $x == "2" ]];
        then
            s+="..--- "
        elif [[ $x == "3" ]];
        then
            s+="...-- "
        elif [[ $x == "4" ]];
        then
            s+="....- "
        elif [[ $x == "5" ]];
        then
            s+="..... "
        elif [[ $x == "6" ]];
        then
            s+="-.... "
        elif [[ $x == "7" ]];
        then
            s+="--... "
        elif [[ $x == "8" ]];
        then
            s+="---.. "
        elif [[ $x == "9" ]];
        then
            s+="----. "
        elif [[ $x == "." ]];
        then
            s+=".-.-.- "
        elif [[ $x == "," ]];
        then
            s+="--..-- "
        elif [[ $x == "?" ]];
        then
            s+="..--.. "
        elif [[ $x == "=" ]];
        then
            s+="-...- "
        elif [[ $x == "" ]];
        then 
            s+="/ "
        elif [[ $x == "\n" ]];
        then 
            s+="\n "
        
    fi
    echo -n  $s
			s=''
    done < $1
}

if [[ "$1" =~ ".txt" ]];
    then
    echo "Your text to morse code is Down here: ";
    CONVERT_TO_MORSE "$FILE"

elif [[ "$1" =~ ".morse" ]];
    then
    echo "Your morse to text code is Down here: ";
    CONVERT_TO_TEXT "$FILE"
fi