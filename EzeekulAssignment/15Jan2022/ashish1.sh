#Name - Ashish Kumar Mishra
#Roll Number - 1906466
#Description - This script is used to convert text to morse code and vice versa.


#Execution (text to morse code) - "bash q1.sh [filename.txt ]"

#Execution (morse code to text) - "bash q1.sh [filename.morse ]"


#Algorithm - To convert a text to morse code we have taken a Associative array which acts like Hashmaps. Afterthat we have to read the string character by character and compare it with the array and print the corresponding morse code.


#To convert a morse code to text we have taken two different arrays one for the morse code and other for the text. We initialize a string variable with empty value and we will scan the input file charcter by character and keep on adding the character to the string until we get a space. Then we compare the string with the array and print the corresponding text.

#!bin/bash
declare -A morse
morse[0]='- - - - -'
morse[1]='. - - - -'
morse[2]='. . - - -'
morse[3]='. . . - -'
morse[4]='. . . . -'
morse[5]='. . . . .'
morse[6]='- . . . .'
morse[7]='- - . . .'
morse[8]='- - - . .'
morse[9]='- - - - .'
morse[A]='. -'
morse[B]='- . . .'
morse[C]='- . - .'
morse[D]='- . .'
morse[E]='.'
morse[F]='. . - .'
morse[G]='- - .'
morse[H]='. . . .'
morse[I]='. .'
morse[J]='. - - -'
morse[K]='- . -'
morse[L]='. - . .'
morse[M]='- -'
morse[N]='- .'
morse[O]='- - -'
morse[P]='. - - .'
morse[Q]='- - . -'
morse[R]='. - .'
morse[S]='. . .'
morse[T]='-'
morse[U]='. . -'
morse[V]='. . . -'
morse[W]='. - -'
morse[X]='- . . -'
morse[Y]='- . - -'
morse[Z]='- - . .'

declare -a arr=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "O" "1" "2" "3" "4" "5" "6" "7" "8" "9" "." "," "?" "=")
declare -a arr1=(".-" "-..." "-.-." "-.." "." "..-." "--." "...." ".." ".---" "-.-" ".-.." "--" "-." "---" ".--." "--.-" ".-." "..." "-" "..-" "...-" ".--" "-..-" "-.--" "--.." "-----" ".----" "..---" "...--" "....-" "....." "-...." "--..." "---.." "----." ".-.-.-" "--..--" "..--.." "-...-")
#######################################
file=$1
l="${#arr[@]}"
l1="${#arr1[@]}"

if [ "${file: -4}" == ".txt" ]
then
    cat $file | while read -rN1 c;
    do
        c=${c^}
        if [[ $c == $'\n' ]]; then
            printf '\n'
            elif [[ $c == ' ' ]]; then
            printf '       '
        else
            printf '%s   ' "${morse[$c]}" >> final.morse
        fi
    done
else
    if [ "${file: -6}" == ".morse" ]
    then
        str=""
        while IFS= read -N1 ch
        do
            if [ "$ch" != ' ' ];then
                str+="$ch"
            else
                for (( j=0; j<l1; j++));
                do
                    if [[ "$str" == "${arr1[$j]}" ]]; then
                        echo -n "${arr[$j]}" >> final1.txt
                        echo -n " " >> final1.txt
                    fi
                done
                str=""
            fi
        done < "$file"
    fi    
fi
clear