#lp  



###name
```
       lp - print files

```
###synopsis
```
       lp [ -E ] [ -U username ] [ -c ] [ -d destination[/instance] ] [ -h hostname[:port] ] [ -m ] [ -n num-copies ] [ -o option[=value] ] [ -q priority ] [ -s ] [ -t title ] [ -H handling ] [ -P page-list ] [ -- ] [ file(s) ]
       lp [ -E ] [ -U username ] [ -c ] [ -h hostname[:port] ] [ -i job-id ] [ -n num-copies ] [ -o option[=value] ] [ -q priority ] [ -t title ] [ -H handling ] [ -P page-list ]

```
###description
```
       lp submits files for printing or alters a pending job. Use a filename of "-" to force printing from the standard input.

```
###the default destination
```
       CUPS provides many ways to set the default destination. The "LPDEST" and "PRINTER" environment variables are consulted first. If neither are set, the current default set using the lpoptions(1) command is used, followed by the default set using the lpadmin(8) command.

```
###options
```
       The following options are recognized by lp:

       --
            Marks the end of options; use this to print a file whose name begins with a dash (-).

       -E
            Forces encryption when connecting to the server.

       -U username
            Specifies the username to use when connecting to the server.

       -c
            This option is provided for backwards-compatibility only. On systems that support it, this option forces the print file to be copied to the spool directory before printing. In CUPS, print files are always sent to the scheduler via IPP which has the same effect.

       -d destination
            Prints files to the named printer.

       -h hostname[:port]
            Chooses an alternate server.

       -i job-id
            Specifies an existing job to modify.

       -m
            Sends an email when the job is completed.

       -n copies
            Sets the number of copies to print from 1 to 100.

       -o "name=value [name=value ...]"
            Sets one or more job options.

       -q priority
            Sets the job priority from 1 (lowest) to 100 (highest). The default priority is 50.

       -s
            Do not report the resulting job IDs (silent mode.)

       -t "name"
            Sets the job name.

       -H hh:mm

       -H hold

       -H immediate

       -H restart

       -H resume
            Specifies when the job should be printed. A value of immediate will print the file immediately, a value of hold will hold the job indefinitely, and a UTC time value (HH:MM) will hold the job until the specified UTC (not local) time. Use a value of resume with the -i option to resume a held job.  Use a value of restart with the -i option to restart a completed job.

       -P page-list
            Specifies which pages to print in the document. The list can contain a list of numbers and ranges (#-#) separated by commas (e.g. 1,3-5,16). The page numbers refer to the output pages and not the document's original pages - options like "number-up" can affect the numbering of the pages.

```
###common job options
```
       Aside from the printer-specific options reported by the lpoptions(1) command, the following generic options are available:

       -o media=size
            Sets the page size to size. Most printers support at least the size names "a4", "letter", and "legal".

       -o landscape

       -o orientation-requested=4
            Prints the job in landscape (rotated 90 degrees).

       -o sides=one-sided

       -o sides=two-sided-long-edge

       -o sides=two-sided-short-edge
            Prints on one or two sides of the paper. The value "two-sided-long-edge" is normally used when printing portrait (unrotated) pages, while "two-sided-short-edge" is used for landscape pages.

       -o fit-to-page
            Scales the print file to fit on the page.

       -o number-up=2

       -o number-up=4

       -o number-up=6

       -o number-up=9

       -o number-up=16
            Prints multiple document pages on each output page.

       -o cpi=N
            Sets the number of characters per inch to use when printing a text file. The default is 10.

       -o lpi=N
            Sets the number of lines per inch to use when printing a text file. The default is 6.

       -o page-bottom=N

       -o page-left=N

       -o page-right=N

       -o page-top=N
            Sets the page margins when printing text files. The values are in points - there are 72 points to the inch.

```
###examples
```
       Print a double-sided legal document to a printer called "foo":
           lp -d foo -o media=legal -o sides=two-sided-long-edge filename

       Print an image across 4 pages:
           lp -d bar -o scaling=200 filename

       Print a text file with 12 characters per inch, 8 lines per inch, and a 1 inch left margin:
           lp -d bar -o cpi=12 -o lpi=8 -o page-left=72 filename

```
###compatibility
```
       Unlike the System V printing system, CUPS allows printer names to contain any printable character except SPACE, TAB, "/", or "#".  Also, printer and class names are not case-sensitive.

       The "q" option accepts a different range of values than the Solaris lp command, matching the IPP job priority values (1-100, 100 is highest priority) instead of the Solaris values (0-39, 0 is highest priority).

```
###see also
```
       cancel(1), lpadmin(8), lpmove(8), lpoptions(1), lpstat(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
