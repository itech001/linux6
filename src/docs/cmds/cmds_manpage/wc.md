#wc  



###name
```
       wc - print newline, word, and byte counts for each file

```
###synopsis
```
       wc [OPTION]... [FILE]...
       wc [OPTION]... --files0-from=F

```
###description
```
       Print newline, word, and byte counts for each FILE, and a total line if more than one FILE is specified.  With no FILE, or when FILE is -, read standard input.  A word is a non-zero-length sequence of characters delimited by white space.  The options below may be used to select which counts are printed, always in the following order: newline, word, character, byte, maximum line length.

       -c, --bytes
              print the byte counts

       -m, --chars
              print the character counts

       -l, --lines
              print the newline counts

       --files0-from=F
              read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input

       -L, --max-line-length
              print the length of the longest line

       -w, --words
              print the word counts

       --help display this help and exit

       --version
              output version information and exit

```
###author
```
       Written by Paul Rubin and David MacKenzie.

```
###reporting bugs
```
       Report wc bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report wc translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for wc is maintained as a Texinfo manual.  If the info and wc programs are properly installed at your site, the command

              info coreutils 'wc invocation'

       should give you access to the complete manual.



```
