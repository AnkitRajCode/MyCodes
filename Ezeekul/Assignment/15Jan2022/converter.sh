#!/bin/bash
#Desc: This code is used to convert text to morse code and morse code to text.
#Algo: ------
#Run: bash Question1.sh < filename.txt/filename.morse > 

FILE="$1"
CONVERT_TO_MORSE(){
    while read -n1 x;
    do
        if [[ ${x^} == "A" ]];
        then 
        echo -e ".- a" 
        elif [[ ${x^} == "B" ]];
        then 
        echo -e "-... b"
        elif [[ ${x^} == "C" ]];
        then    
        echo -e "-.-. c"
        elif [[ ${x^} == "D" ]];
        then 
        echo -e "-.. d"
        elif [[ ${x^} == "E" ]];
        then 
        echo -e ". e"
        elif [[ ${x^} == "F" ]];
        then 
        echo -e "..-. f"
        elif [[ ${x^} == "G" ]];
        then 
        echo -e "--. g"
        elif [[ ${x^} == "H" ]];
        then 
        echo -e ".... h"
        elif [[ ${x^} == "I" ]];
        then 
        echo -e ".. i"
        elif [[ ${x^} == "J" ]];
        then 
        echo -e ".--- j"
        elif [[ ${x^} == "K" ]];
        then 
        echo -e "-.- k"
        elif [[ ${x^} == "L" ]];
        then 
        echo -e ".-.. l"
        elif [[ ${x^} == "M" ]];
        then 
        echo -e "-- m"
        elif [[ ${x^} == "N" ]];
        then 
        echo -e "-. n"
        elif [[ ${x^} == "O" ]];
        then 
        echo -e "--- o"
        elif [[ ${x^} == "P" ]];
        then 
        echo -e ".--. p"
        elif [[ ${x^} == "Q" ]];
        then 
        echo -e "--.- q"
        elif [[ ${x^} == "R" ]];
        then 
        echo -e ".-. r"
        elif [[ ${x^} == "S" ]];
        then 
        echo -e "... s"
        elif [[ ${x^} == "T" ]];
        then 
        echo -e "- t"
        elif [[ ${x^} == "U" ]];
        then 
        echo -e "..- u"
        elif [[ ${x^} == "V" ]];
        then 
        echo -e "...- v"
        elif [[ ${x^} == "W" ]];
        then 
        echo -e ".-- w"
        elif [[ ${x^} == "X" ]];
        then 
        echo -e "-..- x"
        elif [[ ${x^} == "Y" ]];
        then 
        echo -e ".-.. y"
        elif [[ ${x^} == "Z" ]];
        then 
        echo -e "--.. z"
        elif [[ $x == * ]];
        then 
        printf ' '
        elif [[ $x == $'\n' ]];
        then 
        printf '\n'
    fi
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