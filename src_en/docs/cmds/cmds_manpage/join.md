#join  



###name
```
       join - join lines of two files on a common field

```
###synopsis
```
       join [OPTION]... FILE1 FILE2

```
###description
```
       For each pair of input lines with identical join fields, write a line to standard output.  The default join field is the first, delimited by whitespace.  When FILE1 or FILE2 (not both) is -, read standard input.

       -a FILENUM
              also print unpairable lines from file FILENUM, where FILENUM is 1 or 2, corresponding to FILE1 or FILE2

       -e EMPTY
              replace missing input fields with EMPTY

       -i, --ignore-case
              ignore differences in case when comparing fields

       -j FIELD
              equivalent to '-1 FIELD -2 FIELD'

       -o FORMAT
              obey FORMAT while constructing output line

       -t CHAR
              use CHAR as input and output field separator

       -v FILENUM
              like -a FILENUM, but suppress joined output lines

       -1 FIELD
              join on this FIELD of file 1

       -2 FIELD
              join on this FIELD of file 2

       --check-order
              check that the input is correctly sorted, even if all input lines are pairable

       --nocheck-order
              do not check that the input is correctly sorted

       --header
              treat the first line in each file as field headers, print them without trying to pair them

       --help display this help and exit

       --version
              output version information and exit

       Unless -t CHAR is given, leading blanks separate fields and are ignored, else fields are separated by CHAR.  Any FIELD is a field number counted from 1.  FORMAT is one or more comma or blank separated specifications, each being 'FILENUM.FIELD' or '0'.  Default FORMAT outputs the join field, the remaining fields from FILE1, the remaining fields from FILE2, all separated by CHAR.  If FORMAT is the keyword 'auto', then the first line of each file determines the number of fields output for each line.

       Important: FILE1 and FILE2 must be sorted on the join fields.  E.g., use "sort -k 1b,1" if 'join' has no options, or use "join -t ''" if 'sort' has no options.  Note, comparisons honor the rules specified by 'LC_COLLATE'.  If the input is not sorted and some lines cannot be joined, a warning message will be given.

```
###author
```
       Written by Mike Haertel.

```
###reporting bugs
```
       Report join bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report join translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       comm(1), uniq(1)

       The full documentation for join is maintained as a Texinfo manual.  If the info and join programs are properly installed at your site, the command

              info coreutils 'join invocation'

       should give you access to the complete manual.



```
