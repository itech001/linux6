#id  



###name
```
       id - print real and effective user and group IDs

```
###synopsis
```
       id [OPTION]... [USERNAME]

```
###description
```
       Print user and group information for the specified USERNAME, or (when USERNAME omitted) for the current user.

       -a     ignore, for compatibility with other versions

       -Z, --context
              print only the security context of the current user

       -g, --group
              print only the effective group ID

       -G, --groups
              print all group IDs

       -n, --name
              print a name instead of a number, for -ugG

       -r, --real
              print the real ID instead of the effective ID, with -ugG

       -u, --user
              print only the effective user ID

       --help display this help and exit

       --version
              output version information and exit

       Without any OPTION, print some useful set of identified information.

```
###author
```
       Written by Arnold Robbins and David MacKenzie.

```
###reporting bugs
```
       Report id bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report id translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for id is maintained as a Texinfo manual.  If the info and id programs are properly installed at your site, the command

              info coreutils 'id invocation'

       should give you access to the complete manual.



```
