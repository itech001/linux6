#tail  



###name
```
       tail - output the last part of files

```
###synopsis
```
       tail [OPTION]... [FILE]...

```
###description
```
       Print the last 10 lines of each FILE to standard output.  With more than one FILE, precede each with a header giving the file name.  With no FILE, or when FILE is -, read standard input.

       Mandatory arguments to long options are mandatory for short options too.

       -c, --bytes=K
              output the last K bytes; alternatively, use -c +K to output bytes starting with the Kth of each file

       -f, --follow[={name|descriptor}]
              output appended data as the file grows; -f, --follow, and --follow=descriptor are equivalent

       -F     same as --follow=name --retry

       -n, --lines=K
              output the last K lines, instead of the last 10; or use -n +K to output lines starting with the Kth

       --max-unchanged-stats=N
              with --follow=name, reopen a FILE which has not changed size after N (default 5) iterations to see if it has been unlinked or renamed (this is the usual case of rotated log files).  With inotify, this option is rarely useful.

       --pid=PID
              with -f, terminate after process ID, PID dies

       -q, --quiet, --silent
              never output headers giving file names

       --retry
              keep trying to open a file even when it is or becomes inaccessible; useful when following by name, i.e., with --follow=name

       -s, --sleep-interval=N
              with -f, sleep for approximately N seconds (default 1.0) between iterations.  With inotify and --pid=P, check process P at least once every N seconds.

       -v, --verbose
              always output headers giving file names

       --help display this help and exit

       --version
              output version information and exit

       If the first character of K (the number of bytes or lines) is a '+', print beginning with the Kth item from the start of each file, otherwise, print the last K items in the file.  K may have a multiplier suffix: b 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024, GB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.

       With --follow (-f), tail defaults to following the file descriptor, which means that even if a tail'ed file is renamed, tail will continue to track its end.  This default behavior is not desirable when you really want to track the actual name of the file, not the file descriptor (e.g., log rotation).  Use --follow=name in that case.  That causes tail to track the named file in a way that accommodates renaming, removal and creation.

```
###author
```
       Written by Paul Rubin, David MacKenzie, Ian Lance Taylor, and Jim Meyering.

```
###reporting bugs
```
       Report tail bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report tail translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for tail is maintained as a Texinfo manual.  If the info and tail programs are properly installed at your site, the command

              info coreutils 'tail invocation'

       should give you access to the complete manual.



```
