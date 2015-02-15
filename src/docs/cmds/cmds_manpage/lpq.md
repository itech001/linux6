#lpq  



###name
```
       lpq - show printer queue status

```
###synopsis
```
       lpq [ -E ] [ -U username ] [ -h server[:port] ] [ -P destination[/instance] ] [ -a ] [ -l ] [ +interval ]

```
###description
```
       lpq shows the current print queue status on the named printer. Jobs queued on the default destination will be shown if no printer or class is specified on the command-line.

       The +interval option allows you to continuously report the jobs in the queue until the queue is empty; the list of jobs is shown once every interval seconds.

```
###options
```
       lpq supports the following options:

       -E
            Forces encryption when connecting to the server.

       -P destination[/instance]
            Specifies an alternate printer or class name.

       -U username
            Specifies an alternate username.

       -a
            Reports jobs on all printers.

       -h server[:port]
            Specifies an alternate server.

       -l
            Requests a more verbose (long) reporting format.

```
###see also
```
       cancel(1), lp(1), lpr(1), lprm(1), lpstat(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
