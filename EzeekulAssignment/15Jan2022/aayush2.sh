program=`echo $0|sed -e 's:.*/::'`
if [ "$#" = 1 ] && [ "$1" != "-" ] && [ ! -f "$1" ]; then
        print "$program: $1 does not exist"
        exit 2
fi


a="`echo | tr '\012' '\001'`"
b="`echo | tr '\012' '\002'`"

sed '

        /\/\*/!b
        :a
        s:/\*:'"$a"':g
        s:\*/:'"$b"':g

    /'"$b"'/!{
        :b

                $!{
                        N
                        ba
                }

                s:'"$a[^$b]"'*$::
                bc
        }


        '"s:$a[^$b]*$b"'::g
    /'"$a"'/ bb

        :c
        s:'"$a"':/*:g
        s:'"$b"':*/:g
' $1
