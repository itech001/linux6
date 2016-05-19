#who  



###name
```
       who - show who is logged on

```
###synopsis
```
       who [OPTION]... [ FILE | ARG1 ARG2 ]

```
###description
```
       Print information about users who are currently logged in.

       -a, --all
              same as -b -d --login -p -r -t -T -u

       -b, --boot
              time of last system boot

       -d, --dead
              print dead processes

       -H, --heading
              print line of column headings

       --ips  print ips instead of hostnames. with --lookup, canonicalizes based on stored IP, if available, rather than stored hostname

       -l, --login
              print system login processes

       --lookup
              attempt to canonicalize hostnames via DNS

       -m     only hostname and user associated with stdin

       -p, --process
              print active processes spawned by init

       -q, --count
              all login names and number of users logged on

       -r, --runlevel
              print current runlevel

       -s, --short
              print only name, line, and time (default)

       -t, --time
              print last system clock change

       -T, -w, --mesg
              add user's message status as +, - or ?

       -u, --users
              list users logged in

       --message
              same as -T

       --writable
              same as -T

       --help display this help and exit

       --version
              output version information and exit

       If FILE is not specified, use /var/run/utmp.  /var/log/wtmp as FILE is common.  If ARG1 ARG2 given, -m presumed: 'am i' or 'mom likes' are usual.

```
###author
```
       Written by Joseph Arceneaux, David MacKenzie, and Michael Stone.

```
###reporting bugs
```
       Report who bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report who translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for who is maintained as a Texinfo manual.  If the info and who programs are properly installed at your site, the command

              info coreutils 'who invocation'

       should give you access to the complete manual.



```
