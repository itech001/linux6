#lprm  



###name
```
       lprm - cancel print jobs

```
###synopsis
```
       lprm [ -E ] [ -U username ] [ -h server[:port] ] [ -P destination[/instance] ] [ - ] [ job ID(s) ]

```
###description
```
       lprm cancels print jobs that have been queued for printing.  If no arguments are supplied, the current job on the default destination is cancelled. You can specify one or more job ID numbers to cancel those jobs or use the - option to cancel all jobs.

```
###options
```
       The lprm command supports the following options:

       -E
            Forces encryption when connecting to the server.

       -P destination[/instance]
            Specifies the destination printer or class.

       -U username
            Specifies an alternate username.

       -h server[:port]
            Specifies an alternate server.

```
###compatibility
```
       The CUPS version of lprm is compatible with the standard Berkeley lprm command.

```
###see also
```
       cancel(1), lp(1), lpq(1), lpr(1), lpstat(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
