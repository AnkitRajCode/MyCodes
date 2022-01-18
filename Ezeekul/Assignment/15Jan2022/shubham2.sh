file="$1"
first="\/\*"
last="\*\/"
sed "/$first/,/$last/d;s/$first.$last//g;/^\//d;s/\/.*//" $file