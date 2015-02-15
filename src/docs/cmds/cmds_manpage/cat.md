#cat  



###name
```
       cat - concatenate files and print on the standard output

```
###synopsis
```
       cat [OPTION]... [FILE]...

```
###description
```
       Concatenate FILE(s), or standard input, to standard output.

       -A, --show-all
              equivalent to -vET

       -b, --number-nonblank
              number nonempty output lines, overrides -n

       -e     equivalent to -vE

       -E, --show-ends
              display $ at end of each line

       -n, --number
              number all output lines

       -s, --squeeze-blank
              suppress repeated empty output lines

       -t     equivalent to -vT

       -T, --show-tabs
              display TAB characters as ^I

       -u     (ignored)

       -v, --show-nonprinting
              use ^ and M- notation, except for LFD and TAB

       --help display this help and exit

       --version
              output version information and exit

       With no FILE, or when FILE is -, read standard input.

```
###examples
```
       cat f - g
              Output f's contents, then standard input, then g's contents.

       cat    Copy standard input to standard output.

```
###author
```
       Written by Torbjorn Granlund and Richard M. Stallman.

```
###reporting bugs
```
       Report cat bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report cat translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       tac(1)

       The full documentation for cat is maintained as a Texinfo manual.  If the info and cat programs are properly installed at your site, the command

              info coreutils 'cat invocation'

       should give you access to the complete manual.



```
