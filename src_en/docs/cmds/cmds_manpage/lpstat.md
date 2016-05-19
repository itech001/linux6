#lpstat  



###name
```
       lpstat - print cups status information

```
###synopsis
```
       lpstat [ -E ] [ -H ] [ -U username ] [ -h hostname[:port] ] [ -l ] [ -W which-jobs ] [ -a [ destination(s) ] ] [ -c [ class(es) ] ] [ -d ] [ -o [ destination(s) ] ] [ -p [ printer(s) ] ] [ -r ] [ -R ] [ -s ] [ -t ] [ -u [ user(s) ] ] [ -v [ printer(s) ] ]

```
###description
```
       lpstat displays status information about the current classes, jobs, and printers. When run with no arguments, lpstat will list jobs queued by the current user.

```
###options
```
       The lpstat command supports the following options:

       -E
            Forces encryption when connecting to the server.

       -H
            Shows the server hostname and port.

       -R
            Shows the ranking of print jobs.

       -U username
            Specifies an alternate username.

       -W which-jobs
            Specifies which jobs to show, completed or not-completed (the default). This option must appear before the -o option and/or any printer names, otherwise the default (not-completed) value will be used in the request to the scheduler.

       -a [printer(s)]
            Shows the accepting state of printer queues. If no printers are specified then all printers are listed.

       -c [class(es)]
            Shows the printer classes and the printers that belong to them.  If no classes are specified then all classes are listed.

       -d
            Shows the current default destination.

       -h server[:port]
            Specifies an alternate server.

       -l
            Shows a long listing of printers, classes, or jobs.

       -o [destination(s)]
            Shows the jobs queue on the specified destinations. If no destinations are specified all jobs are shown.

       -p [printer(s)]
            Shows the printers and whether or not they are enabled for printing. If no printers are specified then all printers are listed.

       -r
            Shows whether the CUPS server is running.

       -s
            Shows a status summary, including the default destination, a list of classes and their member printers, and a list of printers and their associated devices. This is equivalent to using the "-d", "-c", and "-v" options.

       -t
            Shows all status information. This is equivalent to using the "-r", "-d", "-c", "-v", "-a", "-p", and "-o" options.

       -u [user(s)]
            Shows a list of print jobs queued by the specified users. If no users are specified, lists the jobs queued by the current user.

       -v [printer(s)]
            Shows the printers and what device they are attached to. If no printers are specified then all printers are listed.

```
###compatibility
```
       Unlike the System V printing system, CUPS allows printer names to contain any printable character except SPACE, TAB, "/", and "#".  Also, printer and class names are not case-sensitive.

       The "-h", "-E", "-U", and "-W" options are unique to CUPS.

       The Solaris "-f", "-P", and "-S" options are silently ignored.

```
###see also
```
       cancel(1), lp(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
