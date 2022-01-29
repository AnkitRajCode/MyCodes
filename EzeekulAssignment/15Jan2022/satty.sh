#!/bin/sh
file=$1 
ma=('.-'
 '-...' 
 '-.-.' 
 '-..' 
 '.' 
 '..-.'
  '--.'
  '....'
  '..'
  '.---'
  '-.-'
  '.-..'
  '--' 
 '-.' 
 '---'
  '.--.'
  '--.-'
  '.-.'
   '...' 
  '-'
   '..-'
   '...-'
   '.--' 
  '-..-'
   '-.--' 
  '--..' 
  ' ' 
  '-----'
   '.----' 
  '..---' 
  '...--' 
  '....-' 
  '.....' 
  '-....' 
  '--...'
   '---..'
   '----.' 
  '.-.-.-'
   '-..--' 
  '..--..' 
  '-...-')            
ta=('a'
 'b'
 'c'
 'd'
 'e'
 'f'
 'g'
 'h'
 'i'
 'j'
 'k'
 'l'
 'm'
 'n'
 'o'
 'p'
 'q'
 'r'
 's'
 't'
 'u'
 'v'
 'w'
 'x'
  'y'
  'z'
  ' '
  '0'
  '1'
  '2'
  '3'
  '4'
  '5'
  '6'
  '7'
  '8'
  '9'
  '.'
  ',' 
 '?' 
 '=')      

if [[ "$file" =~ ".txt" ]]    			       
then
    while read -n1 c;     
     do 
          c=${c,,}                                     
          ct=-1
          for i in "${!ta[@]}";                   
          do                                  
               if [[ "${ta[$i]}" = "${c}" ]];     
               then                                    
                    ct=$i                           
                    break                    
               fi                             
          done                               
          
          if [ $ct -gt -1 ];                     
          then
               echo -n  "$c -> ${ma[$ct]}"         
          else
               echo -n " "           
          fi
          
     done <$file
     
elif [[ "$file" =~ ".morse" ]]                               
then
     while read l;                                   
     do 
          ct=-1
          for i in "${!ma[@]}";                    
          do                                   
               if [[ "${ma[$i]}" = "${l}" ]];   
                then                                  
                    ct=$i                     	
                    break                       
               fi                                
          done                                  
          
          if [ $ct -gt -1 ];                        
          then
               echo -n "$l -> ${ta[$ct]}"        
          else
               echo -n " "           
          fi
	  
          
     done <$file
     
else                
     echo "Invalid input"    
fi


