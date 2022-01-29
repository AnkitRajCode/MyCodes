#!/bin/bash
if [ -f $1 ]
then
        #if the extension is in txt it will be converted into morse code
        #here we are also checking the extension
        extension=$(echo $1 | cut -d'.' -f2)
        if [ "$extension" = "txt" ]
        then
                while read -n1 c
                do
                        # b=$(echo $c | tr [:lower:] [:upper:])
                        case ${c^} in
                                "A")
                                        echo -n ".- "
                                        ;;

                                "B")
                                        echo -n "-... "
                                        ;;

                                "C")
                                        echo -n "-.-. "
                                        ;;

                                "D")
                                        echo -n "-.. "
                                        ;;

                                "E")
                                        echo -n ". "
                                        ;;

                                "F")
                                        echo -n "..-. "
                                        ;;

                                "G")
                                        echo -n "--. "
                                        ;;

                                "H")
                                        echo -n ".... "
                                        ;;

                                "I")
                                        echo -n ".. "
                                        ;;

                                "J")
                                        echo -n ".--- "
                                        ;;

                                "K")
                                        echo -n "-.- "
                                        ;;

                                "L")
                                        echo -n ".-.. "
                                        ;;

                                "M")
                                        echo -n "-- "
                                        ;;

                                "N")
                                        echo -n "-. "
                                        ;;

                                "O")
                                        echo -n "--- "
                                        ;;

                                "P")
                                        echo -n ".--. "
                                        ;;

                                "Q")
                                        echo -n"--.- "
                                        ;;

                                "R")
                                        echo -n ".-. "
                                        ;;

                                "S")
                                        echo -n "... "
                                        ;;

                                "T")
                                        echo -n "- "
                                        ;;

                                "U")
                                        echo -n "..- "
                                        ;;

                                "V")
                                        echo -n "...- "
                                        ;;

                                "W")
                                        echo -n ".-- "
                                        ;;

                                "X")
                                        echo -n "-..- "
                                        ;;

                                "Y")
                                        echo -n "-.-- "
                                        ;;

                                "Z")
                                        echo -n "--.. "
                                        ;;

                                "0")
                                        echo -n "----- "
                                        ;;

                                "1")
                                        echo -n ".---- "
                                        ;;

                                "2")
                                        echo -n "..--- "
                                        ;;

                                "3")
                                        echo -n "...-- "
                                        ;;

                                "4")
                                        echo -n "....- "
                                        ;;

                                "5")
                                        echo -n "..... "
                                        ;;

                                "6")
                                        echo -n "-.... "
                                        ;;

                                "7")
                                        echo -n "--... "
                                        ;;

                                "8")
                                        echo -n "---.. "
                                        ;;

                                "9")
                                        echo -n "----. "
                                        ;;

                                ".")
                                        echo -n ".-.-.- "
                                        ;;

                                ",")
                                        echo -n "--..-- "
                                        ;;

                                "?")
                                        echo -n "..--.. "
                                        ;;

                                "=")
                                        echo -n "-...- "
                                        ;;

                                "")
                                        echo -n "/ "
                                        ;;

                                *)
                                        echo -n "@ "
                                        ;;
                        esac
                done < $1
        #if the extension of the file is in morse it will converted into text
        elif [ "$extension" = "morse" ]
        then
                cat $1 | tr -s '[:blank:]' '[\n*]' |
                while IFS= read -r word
                do
                # echo $word
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
        else
             echo "The input file has invalid extension"

        fi
else
        echo "Bash:Invalid File - File doesn't exist"
fi
echo ""
