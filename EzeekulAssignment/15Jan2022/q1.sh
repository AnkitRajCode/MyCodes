#!/bin/bash
#Desc: This code is used to convert text to morse code and morse code to text.
#Algo: first I take command through command line args then using regex I detect .text / .morse extension then using if-else operation I trigger function in it and then using while loop i read line by line character and then storing it in a variable and then matching then variable with its respective characters and printing their morse code I have done text to morse using if else and morse to text using switch case there I m reading word by word using IFS. so that i can get morse code in a variable 
#Run: bash Question1.sh < filename.txt/filename.morse > 

FILE="$1"
CONVERT_TO_MORSE(){
    s=''
    while read -rN1 x;
    do
        if [[ ${x^} == "A" ]];
        then s+=".- " 
        elif [[ ${x^} == "B" ]];
        then  s+="-... "
        elif [[ ${x^} == "C" ]];
        then    
        s+="-.-. "
        elif [[ ${x^} == "D" ]];
        then 
        s+="-.. "
        elif [[ ${x^} == "E" ]];
        then 
        s+=". "
        elif [[ ${x^} == "F" ]];
        then 
        s+="..-. "
        elif [[ ${x^} == "G" ]];
        then 
        s+="--. "
        elif [[ ${x^} == "H" ]];
        then 
        s+=".... "
        elif [[ ${x^} == "I" ]];
        then 
        s+=".. "
        elif [[ ${x^} == "J" ]];
        then 
        s+=".--- "
        elif [[ ${x^} == "K" ]];
        then 
        s+="-.- "
        elif [[ ${x^} == "L" ]];
        then 
        s+=".-.. "
        elif [[ ${x^} == "M" ]];
        then 
        s+="-- "
        elif [[ ${x^} == "N" ]];
        then 
        s+="-. "
        elif [[ ${x^} == "O" ]];
        then 
            s+="--- "
        elif [[ ${x^} == "P" ]];
        then 
            s+=".--. "
        elif [[ ${x^} == "Q" ]];
        then 
            s+="--.- "
        elif [[ ${x^} == "R" ]];
        then 
            s+=".-. "
        elif [[ ${x^} == "S" ]];
        then 
            s+="... "
        elif [[ ${x^} == "T" ]];
        then 
            s+="- "
        elif [[ ${x^} == "U" ]];
        then 
            s+="..- "
        elif [[ ${x^} == "V" ]];
        then 
            s+="...- "
        elif [[ ${x^} == "W" ]];
        then 
            s+=".-- "
        elif [[ ${x^} == "X" ]];
        then 
            s+="-..- "
        elif [[ ${x^} == "Y" ]];
        then 
            s+=".-.. "
        elif [[ ${x^} == "Z" ]];
        then 
            s+="--.. "
        elif [[ $x == "0" ]];
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
        elif [[ $x == " " ]];
        then 
            s+="/ "
        elif [[ $x == $'\n' ]];
        then 
            s+='\n'
    fi
    done < $1
	printf "$s"
}
CONVERT_TO_TEXT(){
    cat $FILE | tr -s '[:blank:]' '[\n*]' |
    while IFS= read -r word
    do
        case $word in
            ".-")
                echo -n "A"
                ;;
            "-...")
                echo -n "B"
                ;;
            "-.-.")
                echo -n "C"
                ;;
            "-..")
                echo -n "D"
                ;;
            ".")
                echo -n  "E"
                ;;
            "..-.")
                echo -n "F"
                ;;
            "--.")
                echo -n "G"
                ;;
            "....")
                echo -n "H"
                ;;
            "..")
                echo -n "I"
                ;;
            ".---")
                echo -n "J"
                ;;
            "-.-")
                echo -n "K"
                ;;
            ".-..")
                echo -n "L"
                ;;
            "--")
                echo -n "M"
                ;;
            "-.")
                echo -n "N"
                ;;
            "---")
                echo -n "O"
                ;;
            ".--.")
                echo -n "P"
                ;;
            "--.-")
                echo -n "Q"
                ;;
            ".-.")
                echo -n "R"
                ;;
            "...")
                echo -n "S"
                ;;
            "-")
                echo -n "T"
                ;;
            "..-")
                echo -n "U"
                ;;
            "...-")
                echo -n "V"
                ;;
            ".--")
                echo -n "W"
                ;;
            "-..-")
                echo -n "X"
                ;;
            "-.--")
                echo -n "Y"
                ;;
            "--..")
                echo -n "Z"
                ;;
            "-----")
                echo -n "0"
                ;;
            ".----")
                echo -n "1"
                ;;
            "..---")
                echo -n "2"
                ;;
            "...--" )
            echo -n "3"
            ;;
            "....-")
                echo -n "4"
                ;;
            ".....")
                echo -n "5"
                ;;
            "-....")
                echo -n "6"
                ;;
            "--...")
                echo -n "7"
                ;;
            "---..")
                echo -n "8"
                ;;
            "----.")
                echo -n "9"
                ;;
            ".-.-.-")
                echo -n "."
                ;;
            "--..--")
                echo -n ","
                    ;;
            "..--..")
                echo -n "?"
                ;;
            "-...-")
                echo -n "="
                ;;
            "/")
                echo -n " "
                ;;
            *)
                echo -n "@"
                ;;
        esac
    done
}

if [[ "$1" =~ ".txt" ]];
    then
    CONVERT_TO_MORSE "$FILE"

elif [[ "$1" =~ ".morse" ]];
    then
    CONVERT_TO_TEXT "$FILE"
fi