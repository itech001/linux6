#chroot  



###name
```
       chroot - run command or interactive shell with special root directory

```
###synopsis
```
       chroot [OPTION] NEWROOT [COMMAND [ARG]...]
       chroot OPTION

```
###description
```
       Run COMMAND with root directory set to NEWROOT.

       --userspec=USER:GROUP
              specify user and group (ID or name) to use

       --groups=G_LIST
              specify supplementary groups as g1,g2,..,gN

       --help display this help and exit

       --version
              output version information and exit

       If no command is given, run '${SHELL} -i' (default: '/bin/sh -i').

```
###author
```
       Written by Roland McGrath.

```
###reporting bugs
```
       Report chroot bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report chroot translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       chroot(2)

       The full documentation for chroot is maintained as a Texinfo manual.  If the info and chroot programs are properly installed at your site, the command

              info coreutils 'chroot invocation'

       should give you access to the complete manual.



```
