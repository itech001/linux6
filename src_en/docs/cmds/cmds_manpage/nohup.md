#nohup  



###name
```
       nohup - run a command immune to hangups, with output to a non-tty

```
###synopsis
```
       nohup COMMAND [ARG]...
       nohup OPTION

```
###description
```
       Run COMMAND, ignoring hangup signals.

       --help display this help and exit

       --version
              output version information and exit

       If standard input is a terminal, redirect it from /dev/null.  If standard output is a terminal, append output to 'nohup.out' if possible, '$HOME/nohup.out' otherwise.  If standard error is a terminal, redirect it to standard output.  To save output to FILE, use 'nohup COMMAND > FILE'.

       NOTE: your shell may have its own version of nohup, which usually supersedes the version described here.  Please refer to your shell's documentation for details about the options it supports.

```
###author
```
       Written by Jim Meyering.

```
###reporting bugs
```
       Report nohup bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report nohup translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for nohup is maintained as a Texinfo manual.  If the info and nohup programs are properly installed at your site, the command

              info coreutils 'nohup invocation'

       should give you access to the complete manual.



```
