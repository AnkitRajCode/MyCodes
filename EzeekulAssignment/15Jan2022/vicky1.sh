#!/bin/bash
declare -A array
declare -A m
myfunc1() {
m['.-']="A"
m['-...']="B"
m['-.-.']="C"
m[-..]="D"
m['.']="E"
m['..-.']="F"
m['--.']="G"
m['....']="H"
m['..']="I"
m['.---']="J"
m['-.-']="K"
m['.-..']="L"
m['--']="M"
m['-.']="N"
m['---']="O"
m['.--.']="P"
m['--.-']="Q"
m['.-.']="R"
m['...']="S"
m['-']="T"
m['..-']="U"
m['...-']="V"
m['.--']="W"
m['-..-']="X"
m['-.--']="Y"
m['--..']="Z"
m['-----']="0"
m['.----']="1"
m['..---']="2"
m['...--']="3"
m['....-']="4"
m['.....']="5"
m['-....']="6"
m['--...']="7"
m['---..']="8"
m['----.']="9"
m['.-.-.-']="."
m['..-..']=","
m['-..-']="="
m['..--..']="?"
ans=""
while read -n1 character
do

        if [[ ${character} != '-' && ${character} != '.' ]]
        then
                if [[ ${character} = '/' ]]
                then
                        echo -ne " "
                else
                        if [[ ! -z "$ans" ]]
                        then
                        echo -ne ${m[$ans]}
                        ans=""
                        fi
                fi
        else
            ans+=$character
        fi
done<$1
}
myfunc() {
array[A]=".-"
array[B]="-..."
array[C]="-.-."
array[D]="-.."
array[E]="."
array[F]="..-."
array[G]="--."
array[H]="...."
array[I]=".."
array[J]=".---"
array[K]="-.-"
array[L]=".-.."
array[M]="--"
array[N]="-."
array[O]="---"
array[P]=".--."
array[Q]="--.-"
array[R]=".-."
array[S]="..."
array[T]="-"
array[U]="..-"
array[V]="...-"
array[W]=".--"
array[X]="-..-"
array[Y]="-.--"
array[Z]="--.."
array[.]=".-.-.-"
array[,]="..-.."
array[=]="-...-"
array[?]="..--.."
array[0]="-----"
array[1]=".----"
array[2]="..---"
array[3]="...--"
array[4]="....-"
array[5]="...."
array[6]="-...."
array[7]="--..."
array[8]="---.."
array[9]="----."
while read -n1 character
do
        character=${character^}
        if [[ ${character} != [A-Z] && ${character} != ',' &&  ${character} != '?' &&  ${character} != '.' && ${character} != '=' ]]
        then
                echo -ne " / "
        else
        echo -ne ${array[$character]}
        echo -ne " "
fi
done<$1
}
type=`echo "$1" | cut -d "." -f2`
if [[ "$type" = "txt" ]]
then
        myfunc $1
elif [[ "$type" = "morse" ]]
then
        myfunc1 $1
fi