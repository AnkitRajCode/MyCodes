sed 's/ /\n/g' $1 | awk '{print length, $0}' | sort -nr | head -n 1