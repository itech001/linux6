#readlink  



###name
```
       readlink - print resolved symbolic links or canonical file names

```
###synopsis
```
       readlink [OPTION]... FILE...

```
###description
```
       Print value of a symbolic link or canonical file name

       -f, --canonicalize
              canonicalize by following every symlink in every component of the given name recursively; all but the last component must exist

       -e, --canonicalize-existing
              canonicalize by following every symlink in every component of the given name recursively, all components must exist

       -m, --canonicalize-missing
              canonicalize by following every symlink in every component of the given name recursively, without requirements on components existence

       -n, --no-newline
              do not output the trailing delimiter

       -q, --quiet,

       -s, --silent
              suppress most error messages

       -v, --verbose
              report error messages

       -z, --zero
              separate output with NUL rather than newline

       --help display this help and exit

       --version
              output version information and exit

```
###author
```
       Written by Dmitry V. Levin.

```
###reporting bugs
```
       Report readlink bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report readlink translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       readlink(2), realpath(1), realpath(3)

       The full documentation for readlink is maintained as a Texinfo manual.  If the info and readlink programs are properly installed at your site, the command

              info coreutils 'readlink invocation'

       should give you access to the complete manual.



```
