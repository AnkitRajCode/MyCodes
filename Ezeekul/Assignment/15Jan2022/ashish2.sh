#!/bin/bash
file="$1"
first="\/\*"
last="\*\/"
sed -i "/$first/,/$last/d" "$file"
sed -i "s/$first.*$last//g" "$file"
sed -i '/^\//d' "$file"