#Desc: This code is used to remove comment from .c files

#Algo: I am using a loop and first removing single-line comments and replacing them with empty lines. After that, we check for double quotation conditions in the double quotation. We are printing lines without removing any characters. After closing the double quotation, removing the backslash, the loop is closed, for we are checking for a double quote. Then we check for a single quote, and the conditions are the same as for double quotes. After that, we check for multiline comments. If multiline comments start (/*), then remove all the content until the end of the multiline comment (*/). and hence, printing the final result.

#Run: sed -f q3.sed <filename.c>

:loop
/^\/\// s,.*,,

/^$/{
  x
  n
  b loop
}
/^"/{
  :double
  /^$/{
    x
    n
    /^"/b break
    b double
  }

  H
  x
  s,\n\(.[^\"]*\).*,\1,
  x
  s,.[^\"]*,,

  /^"/b break
  /^\\/{
    H
    x
    s,\n\(.\).*,\1,
    x
    s/.//
  }
  b double
}

/^'/{
  :single
  /^$/{
    x
    n
    /^'/b break
    b single
  }
  H
  x
  s,\n\(.[^\']*\).*,\1,
  x
  s,.[^\']*,,

  /^'/b break
  /^\\/{
    H
    x
    s,\n\(.\).*,\1,
    x
    s/.//
  }
  b single
}

/^\/\*/{
  s/.//
  :ccom
  s,^.[^*]*,,
  /^$/ n
  /^\*\//{
    s/..//
    b loop
  }
  b ccom
}

:break
H
x
s,\n\(.[^"'/]*\).*,\1,
x
s/.[^"'/]*//
b loop