#!/bin/bash

FILE="$1"

CONVERT_TO_TEXT(){
    if [["A"]]
    then echo ".-"
    elif [[]]
}

if [["$1" =~ ".txt"]];
then
echo "Your text to morse code is Down here: ";
CONVERT_TO_MORSE "$FILE"

else [["$1" =~ ".morse"]];
then
echo "Your morse to text code is Down here: ";
CONVERT_TO_TEXT "$FILE"