#nice  



###name
```
       nice - run a program with modified scheduling priority

```
###synopsis
```
       nice [OPTION] [COMMAND [ARG]...]

```
###description
```
       Run COMMAND with an adjusted niceness, which affects process scheduling.  With no COMMAND, print the current niceness.  Niceness values range from -20 (most favorable to the process) to 19 (least favorable to the process).

       Mandatory arguments to long options are mandatory for short options too.

       -n, --adjustment=N
              add integer N to the niceness (default 10)

       --help display this help and exit

       --version
              output version information and exit

       NOTE: your shell may have its own version of nice, which usually supersedes the version described here.  Please refer to your shell's documentation for details about the options it supports.

```
###author
```
       Written by David MacKenzie.

```
###reporting bugs
```
       Report nice bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report nice translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       nice(2), renice(1)

       The full documentation for nice is maintained as a Texinfo manual.  If the info and nice programs are properly installed at your site, the command

              info coreutils 'nice invocation'

       should give you access to the complete manual.



```
