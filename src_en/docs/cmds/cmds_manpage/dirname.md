#dirname  



###name
```
       dirname - strip last component from file name

```
###synopsis
```
       dirname [OPTION] NAME...

```
###description
```
       Output each NAME with its last non-slash component and trailing slashes removed; if NAME contains no /'s, output '.' (meaning the current directory).

       -z, --zero
              separate output with NUL rather than newline

       --help display this help and exit

       --version
              output version information and exit

```
###examples
```
       dirname /usr/bin/
              -> "/usr"

       dirname dir1/str dir2/str
              -> "dir1" followed by "dir2"

       dirname stdio.h
              -> "."

```
###author
```
       Written by David MacKenzie and Jim Meyering.

```
###reporting bugs
```
       Report dirname bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report dirname translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       basename(1), readlink(1)

       The full documentation for dirname is maintained as a Texinfo manual.  If the info and dirname programs are properly installed at your site, the command

              info coreutils 'dirname invocation'

       should give you access to the complete manual.



```
