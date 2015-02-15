#env  



###name
```
       env - run a program in a modified environment

```
###synopsis
```
       env [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]

```
###description
```
       Set each NAME to VALUE in the environment and run COMMAND.

       Mandatory arguments to long options are mandatory for short options too.

       -i, --ignore-environment
              start with an empty environment

       -0, --null
              end each output line with 0 byte rather than newline

       -u, --unset=NAME
              remove variable from the environment

       --help display this help and exit

       --version
              output version information and exit

       A mere - implies -i.  If no COMMAND, print the resulting environment.

```
###author
```
       Written by Richard Mlynarik and David MacKenzie.

```
###reporting bugs
```
       Report env bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report env translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for env is maintained as a Texinfo manual.  If the info and env programs are properly installed at your site, the command

              info coreutils 'env invocation'

       should give you access to the complete manual.



```
