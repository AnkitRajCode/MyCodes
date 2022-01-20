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
        echo -n ".- a" 
        elif [[ ${x^} == "B" ]];
        then 
        echo -n "-... b"
        elif [[ ${x^} == "C" ]];
        then    
        echo -n "-.-. c"
        elif [[ ${x^} == "D" ]];
        then 
        echo -n "-.. d"
        elif [[ ${x^} == "E" ]];
        then 
        echo -n ". e"
        elif [[ ${x^} == "F" ]];
        then 
        echo -n "..-. f"
        elif [[ ${x^} == "G" ]];
        then 
        echo -n "--. g"
        elif [[ ${x^} == "H" ]];
        then 
        echo -n ".... h"
        elif [[ ${x^} == "I" ]];
        then 
        echo -n ".. i"
        elif [[ ${x^} == "J" ]];
        then 
        echo -n ".--- j"
        elif [[ ${x^} == "K" ]];
        then 
        echo -n "-.- k"
        elif [[ ${x^} == "L" ]];
        then 
        echo -n ".-.. l"
        elif [[ ${x^} == "M" ]];
        then 
        echo -n "-- m"
        elif [[ ${x^} == "N" ]];
        then 
        echo -n "-. n"
        elif [[ ${x^} == "O" ]];
        then 
            echo -n "--- o"
        elif [[ ${x^} == "P" ]];
        then 
            echo -n ".--. p"
        elif [[ ${x^} == "Q" ]];
        then 
            echo -n "--.- q"
        elif [[ ${x^} == "R" ]];
        then 
            echo -n ".-. r"
        elif [[ ${x^} == "S" ]];
        then 
            echo -n "... s"
        elif [[ ${x^} == "T" ]];
        then 
            echo -n "- t"
        elif [[ ${x^} == "U" ]];
        then 
            echo -n "..- u"
        elif [[ ${x^} == "V" ]];
        then 
            echo -n "...- v"
        elif [[ ${x^} == "W" ]];
        then 
            echo -n ".-- w"
        elif [[ ${x^} == "X" ]];
        then 
            echo -n "-..- x"
        elif [[ ${x^} == "Y" ]];
        then 
            echo -n ".-.. y"
        elif [[ ${x^} == "Z" ]];
        then 
            echo -n "--.. z"
        elif [[ ${x^} == "0" ]];
        then 
            echo -n "----- " 
        elif [[ $x == "1" ]];
        then 
            echo -n ".---- "
        elif [[ $x == "2" ]];
        then
            echo -n "..--- "
        elif [[ $x == "3" ]];
        then
            echo -n "...-- "
        elif [[ $x == "4" ]];
        then
            echo -n "....- "
        elif [[ $x == "5" ]];
        then
            echo -n "..... "
        elif [[ $x == "6" ]];
        then
            echo -n "-.... "
        elif [[ $x == "7" ]];
        then
            echo -n "--... "
        elif [[ $x == "8" ]];
        then
            echo -n "---.. "
        elif [[ $x == "9" ]];
        then
            echo -n "----. "
        elif [[ $x == "." ]];
        then
            echo -n ".-.-.- "
        elif [[ $x == "," ]];
        then
            echo -n "--..-- "
        elif [[ $x == "?" ]];
        then
            echo -n "..--.. "
        elif [[ $x == "=" ]];
        then
            echo -n "-...- "
        elif [[ $x == "" ]];
        then 
            echo -n "/ "
        elif [[ $x == * ]];
        then 
            echo -n "@ "
        elif [[ $x == \n ]];
        then 
            echo -n "\n "
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