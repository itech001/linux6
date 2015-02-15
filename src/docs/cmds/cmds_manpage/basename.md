#basename  



###name
```
       basename - strip directory and suffix from filenames

```
###synopsis
```
       basename NAME [SUFFIX]
       basename OPTION... NAME...

```
###description
```
       Print NAME with any leading directory components removed.  If specified, also remove a trailing SUFFIX.

       Mandatory arguments to long options are mandatory for short options too.

       -a, --multiple
              support multiple arguments and treat each as a NAME

       -s, --suffix=SUFFIX
              remove a trailing SUFFIX

       -z, --zero
              separate output with NUL rather than newline

       --help display this help and exit

       --version
              output version information and exit

```
###examples
```
       basename /usr/bin/sort
              -> "sort"

       basename include/stdio.h .h
              -> "stdio"

       basename -s .h include/stdio.h
              -> "stdio"

       basename -a any/str1 any/str2
              -> "str1" followed by "str2"

```
###author
```
       Written by David MacKenzie.

```
###reporting bugs
```
       Report basename bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report basename translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       dirname(1), readlink(1)

       The full documentation for basename is maintained as a Texinfo manual.  If the info and basename programs are properly installed at your site, the command

              info coreutils 'basename invocation'

       should give you access to the complete manual.



```
