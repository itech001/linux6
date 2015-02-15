#tr  



###name
```
       tr - translate or delete characters

```
###synopsis
```
       tr [OPTION]... SET1 [SET2]

```
###description
```
       Translate, squeeze, and/or delete characters from standard input, writing to standard output.

       -c, -C, --complement
              use the complement of SET1

       -d, --delete
              delete characters in SET1, do not translate

       -s, --squeeze-repeats
              replace each input sequence of a repeated character that is listed in SET1 with a single occurrence of that character

       -t, --truncate-set1
              first truncate SET1 to length of SET2

       --help display this help and exit

       --version
              output version information and exit

       SETs are specified as strings of characters.  Most represent themselves.  Interpreted sequences are:

       \NNN   character with octal value NNN (1 to 3 octal digits)

       \\     backslash

       \a     audible BEL

       \b     backspace

       \f     form feed

       \n     new line

       \r     return

       \t     horizontal tab

       \v     vertical tab

       CHAR1-CHAR2
              all characters from CHAR1 to CHAR2 in ascending order

       [CHAR*]
              in SET2, copies of CHAR until length of SET1

       [CHAR*REPEAT]
              REPEAT copies of CHAR, REPEAT octal if starting with 0

       [:alnum:]
              all letters and digits

       [:alpha:]
              all letters

       [:blank:]
              all horizontal whitespace

       [:cntrl:]
              all control characters

       [:digit:]
              all digits

       [:graph:]
              all printable characters, not including space

       [:lower:]
              all lower case letters

       [:print:]
              all printable characters, including space

       [:punct:]
              all punctuation characters

       [:space:]
              all horizontal or vertical whitespace

       [:upper:]
              all upper case letters

       [:xdigit:]
              all hexadecimal digits

       [=CHAR=]
              all characters which are equivalent to CHAR

       Translation occurs if -d is not given and both SET1 and SET2 appear.  -t may be used only when translating.  SET2 is extended to length of SET1 by repeating its last character as necessary.  Excess characters of SET2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to expand in ascending order; used in SET2 while translating, they may only be used in pairs to specify case conversion.  -s uses SET1 if not translating nor deleting; else squeezing uses SET2 and occurs after translation or deletion.

```
###author
```
       Written by Jim Meyering.

```
###reporting bugs
```
       Report tr bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report tr translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for tr is maintained as a Texinfo manual.  If the info and tr programs are properly installed at your site, the command

              info coreutils 'tr invocation'

       should give you access to the complete manual.



```
