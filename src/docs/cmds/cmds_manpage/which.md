#which  



###name
```
       which - locate a command

```
###synopsis
```
       which [-a] filename ...

```
###description
```
       which returns the pathnames of the files (or links) which would be executed in the current environment, had its arguments been given as commands in a strictly POSIX-conformant shell.  It does this by searching the PATH for executable files matching the names of the arguments. It does not follow symbolic links.

```
###options
```
       -a     print all matching pathnames of each argument

```
###exit status
```
       0      if all specified commands are found and executable

       1      if one or more specified commands is nonexistent or not executable

       2      if an invalid option is specified



```
