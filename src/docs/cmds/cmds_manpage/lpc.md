#lpc  



###name
```
       lpc - line printer control program

```
###synopsis
```
       lpc [ command [ parameter(s) ] ]

```
###description
```
       lpc provides limited control over printer and class queues provided by CUPS. It can also be used to query the state of queues.

       If no command is specified on the command-line, lpc will display a prompt and accept commands from the standard input.

```
###commands
```
       The lpc program accepts a subset of commands accepted by the Berkeley lpc program of the same name:

       exit
            Exits the command interpreter.

       help [command]

       ? [command]
            Displays a short help message.

       quit
            Exits the command interpreter.

       status [queue]
            Displays the status of one or more printer or class queues.

```
###limitations
```
       Since lpc is geared towards the Berkeley printing system, it is impossible to use lpc to configure printer or class queues provided by CUPS.  To configure printer or class queues you must use the lpadmin(8) command or another CUPS-compatible client with that functionality.

```
###compatibility
```
       The CUPS version of lpc does not implement all of the standard Berkeley or LPRng commands.

```
###see also
```
       cancel(1), cupsaccept(8), cupsenable(8), lp(1), lpr(1), lprm(1), lpstat(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
