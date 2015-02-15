#head  



###name
```
       head - output the first part of files

```
###synopsis
```
       head [OPTION]... [FILE]...

```
###description
```
       Print the first 10 lines of each FILE to standard output.  With more than one FILE, precede each with a header giving the file name.  With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.

       -c, --bytes=[-]K
              print the first K bytes of each file; with the leading '-', print all but the last K bytes of each file

       -n, --lines=[-]K
              print the first K lines instead of the first 10; with the leading '-', print all but the last K lines of each file

       -q, --quiet, --silent
              never print headers giving file names

       -v, --verbose
              always print headers giving file names

       --help display this help and exit

       --version
              output version information and exit

       K may have a multiplier suffix: b 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024, GB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.

```
###author
```
       Written by David MacKenzie and Jim Meyering.

```
###reporting bugs
```
       Report head bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report head translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for head is maintained as a Texinfo manual.  If the info and head programs are properly installed at your site, the command

              info coreutils 'head invocation'

       should give you access to the complete manual.



```
