#lpr  



###name
```
       lpr - print files

```
###synopsis
```
       lpr [ -E ] [ -H server[:port] ] [ -U username ] [ -P destination[/instance] ] [ -# num-copies [ -h ] [ -l ] [ -m ] [ -o option[=value] ] [ -p] [ -q ] [ -r ] [ -C/J/T title ] [ file(s) ]

```
###description
```
       lpr submits files for printing. Files named on the command line are sent to the named printer (or the default destination if no destination is specified). If no files are listed on the command-line, lpr reads the print file from the standard input.

```
###the default destination
```
       CUPS provides many ways to set the default destination. The "LPDEST" and "PRINTER" environment variables are consulted first. If neither are set, the current default set using the lpoptions(1) command is used, followed by the default set using the lpadmin(8) command.

```
###options
```
       The following options are recognized by lpr:

       -E
            Forces encryption when connecting to the server.

       -H server[:port]
            Specifies an alternate server.

       -C "name"

       -J "name"

       -T "name"
            Sets the job name.

       -P destination[/instance]
            Prints files to the named printer.

       -U username
            Specifies an alternate username.

       -# copies
            Sets the number of copies to print from 1 to 100.

       -h
            Disables banner printing. This option is equivalent to "-o job-sheets=none".

       -l
            Specifies that the print file is already formatted for the destination and should be sent without filtering. This option is equivalent to "-o raw".

       -m
            Send an email on job completion.

       -o option[=value]
            Sets a job option.

       -p
            Specifies that the print file should be formatted with a shaded header with the date, time, job name, and page number. This option is equivalent to "-o prettyprint" and is only useful when printing text files.

       -q
            Hold job for printing.

       -r
            Specifies that the named print files should be deleted after printing them.

```
###compatibility
```
       The "c", "d", "f", "g", "i", "n", "t", "v", and "w" options are not supported by CUPS and produce a warning message if used.

```
###see also
```
       cancel(1), lp(1), lpadmin(8), lpoptions(1), lpq(1), lprm(1), lpstat(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
