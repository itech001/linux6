#fmt  



###name
```
       fmt - simple optimal text formatter

```
###synopsis
```
       fmt [-WIDTH] [OPTION]... [FILE]...

```
###description
```
       Reformat each paragraph in the FILE(s), writing to standard output.  The option -WIDTH is an abbreviated form of --width=DIGITS.

       Mandatory arguments to long options are mandatory for short options too.

       -c, --crown-margin
              preserve indentation of first two lines

       -p, --prefix=STRING
              reformat only lines beginning with STRING, reattaching the prefix to reformatted lines

       -s, --split-only
              split long lines, but do not refill

       -t, --tagged-paragraph
              indentation of first line different from second

       -u, --uniform-spacing
              one space between words, two after sentences

       -w, --width=WIDTH
              maximum line width (default of 75 columns)

       -g, --goal=WIDTH
              goal width (default of 93% of width)

       --help display this help and exit

       --version
              output version information and exit

       With no FILE, or when FILE is -, read standard input.

```
###author
```
       Written by Ross Paterson.

```
###reporting bugs
```
       Report fmt bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report fmt translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for fmt is maintained as a Texinfo manual.  If the info and fmt programs are properly installed at your site, the command

              info coreutils 'fmt invocation'

       should give you access to the complete manual.



```
