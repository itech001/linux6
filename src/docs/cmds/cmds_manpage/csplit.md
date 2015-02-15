#csplit  



###name
```
       csplit - split a file into sections determined by context lines

```
###synopsis
```
       csplit [OPTION]... FILE PATTERN...

```
###description
```
       Output pieces of FILE separated by PATTERN(s) to files 'xx00', 'xx01', ..., and output byte counts of each piece to standard output.

       Mandatory arguments to long options are mandatory for short options too.

       -b, --suffix-format=FORMAT
              use sprintf FORMAT instead of %02d

       -f, --prefix=PREFIX
              use PREFIX instead of 'xx'

       -k, --keep-files
              do not remove output files on errors

       -n, --digits=DIGITS
              use specified number of digits instead of 2

       -s, --quiet, --silent
              do not print counts of output file sizes

       -z, --elide-empty-files
              remove empty output files

       --help display this help and exit

       --version
              output version information and exit

       Read standard input if FILE is -.  Each PATTERN may be:

       INTEGER
              copy up to but not including specified line number

       /REGEXP/[OFFSET]
              copy up to but not including a matching line

       %REGEXP%[OFFSET]
              skip to, but not including a matching line

       {INTEGER}
              repeat the previous pattern specified number of times

       {*}    repeat the previous pattern as many times as possible

       A line OFFSET is a required '+' or '-' followed by a positive integer.

```
###author
```
       Written by Stuart Kemp and David MacKenzie.

```
###reporting bugs
```
       Report csplit bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report csplit translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for csplit is maintained as a Texinfo manual.  If the info and csplit programs are properly installed at your site, the command

              info coreutils 'csplit invocation'

       should give you access to the complete manual.



```
