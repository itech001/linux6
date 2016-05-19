#tabs  



###name
```
       tabs - set tabs on a terminal

```
###synopsis
```
       tabs [options]] [tabstop-list]

```
###description
```
       The tabs program clears and sets tab-stops on the terminal.  This uses the terminfo clear_all_tabs and set_tab capabilities.  If either is absent, tabs is unable to clear/set tab-stops.  The terminal should be configured to use hard tabs, e.g.,

              stty tab0

```
###options
```
   General Options
       -Tname
            Tell tabs which terminal type to use.  If this option is not given, tabs will use the $TERM environment variable.  If that is not set, it will use the ansi+tabs entry.

       -d   The debugging option shows a ruler line, followed by two data lines.  The first data line shows the expected tab-stops marked with asterisks.  The second data line shows the actual tab-stops, marked with asterisks.

       -n   This option tells tabs to check the options and run any debugging option, but not to modify the terminal settings.

       -V   reports the version of ncurses which was used in this program, and exits.

       The tabs program processes a single list of tab stops.  The last option to be processed which defines a list is the one that determines the list to be processed.

   Implicit Lists
       Use a single number as an option, e.g., "-5" to set tabs at the given interval (in this case 1, 6, 11, 16, 21, etc.).  Tabs are repeated up to the right margin of the screen.

       Use "-0" to clear all tabs.

       Use "-8" to set tabs to the standard interval.

   Explicit Lists
       An explicit list can be defined after the options (this does not use a "-").  The values in the list must be in increasing numeric order, and greater than zero.  They are separated by a comma or a blank, for example,

              tabs 1,6,11,16,21
              tabs 1 6 11 16 21
       Use a '+' to treat a number as an increment relative to the previous value, e.g.,

              tabs 1,+5,+5,+5,+5
       which is equivalent to the 1,6,11,16,21 example.

   Predefined Tab-Stops
       X/Open defines several predefined lists of tab stops.

       -a   Assembler, IBM S/370, first format

       -a2  Assembler, IBM S/370, second format

       -c   COBOL, normal format

       -c2  COBOL compact format

       -c3  COBOL compact format extended

       -f   FORTRAN

       -p   PL/I

       -s   SNOBOL

       -u   UNIVAC 1100 Assembler

```
###portability
```
       X/Open describes a +m option, to set a terminal's left-margin.  Very few of the entries in the terminal database provide this capability.

       The -d (debug) and -n (no-op) options are extensions not provided by other implementations.

       Documentation for other implementations states that there is a limit on the number of tab stops.  While some terminals may not accept an arbitrary number of tab stops, this implementation will attempt to set tab stops up to the right margin of the screen, if the given list happens to be that long.

```
###see also
```
       tset(1), infocmp(1), ncurses(3NCURSES), terminfo(5).

       This describes ncurses version 5.9 (patch 20140118).



```
