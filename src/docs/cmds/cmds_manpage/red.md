#red  



###name
```
       Ed - line-oriented text editor

```
###synopsis
```
       ed [options] [file]

```
###description
```
       GNU Ed - The GNU line editor.

```
###options
```
       -h, --help
              display this help and exit

       -V, --version
              output version information and exit

       -G, --traditional
              run in compatibility mode

       -l, --loose-exit-status
              exit with 0 status even if a command fails

       -p, --prompt=STRING
              use STRING as an interactive prompt

       -r, --restricted
              run in restricted mode

       -s, --quiet, --silent
              suppress diagnostics

       -v, --verbose
              be verbose

       Start edit by reading in 'file' if given.  If 'file' begins with a '!', read output of shell command.

       Exit status: 0 for a normal exit, 1 for environmental problems (file not found, invalid flags, I/O errors, etc), 2 to indicate a corrupt or invalid input file, 3 for an internal consistency error (eg, bug) which caused ed to panic.

```
###reporting bugs
```
       Report bugs to <bug-ed@gnu.org>.
       Ed home page: http://www.gnu.org/software/ed/ed.html
       General help using GNU software: http://www.gnu.org/gethelp

```
###copyright
```
       Copyright © 1994 Andrew L. Moore.
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for Ed is maintained as a Texinfo manual.  If the info and Ed programs are properly installed at your site, the command

              info Ed

       should give you access to the complete manual.



```
