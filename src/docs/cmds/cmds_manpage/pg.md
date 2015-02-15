#pg  



###name
```
       pg - browse pagewise through text files

```
###synopsis
```
       pg [-number] [-p string] [-cefnrs] [+line] [+/pattern/] [file...]

```
###description
```
       pg displays a text file on a CRT one screenful at once.  After each page, a prompt is displayed.  The user may then either press the newline key to view the next page or one of the keys described below.

       If no filename is given on the command line, pg reads from standard input.  If standard output is not a terminal, pg acts like cat(1) but precedes each file with its name if there is more than one.

       If input comes from a pipe, pg stores the data in a buffer file while reading to make navigation possible.

```
###options
```
       pg accepts the following options:

       -number
              The number of lines per page.  Usually, this is the number of CRT lines minus one.

       -c     Clear the screen before a page is displayed, if the terminfo entry for the terminal provides this capability.

       -e     Do not pause and display (EOF) at the end of a file.

       -f     Do not split long lines.

       -n     Without this option, commands must be terminated by a newline character.  With this option, pg advances once a command letter is entered.

       -p string
              Instead of the normal prompt :, string is displayed.  If string contains %d, its first occurrence is replaced by the number of the current page.

       -r     Disallow the shell escape.

       -s     Print messages in standout mode, if the terminfo entry for the terminal provides this capability.

       +number
              Start at the given line.

       +/pattern/
              Start at the line containing the Basic Regular Expression pattern given.

```
###usage
```
       The following commands may be entered at the prompt.  Commands preceded by i in this document accept a number as argument, positive or negative.  If this argument starts with + or -, it is interpreted relative to the current position in the input file, otherwise relative to the beginning.

       i<newline>
              Display the next or the indicated page.

       id or ^D
              Display the next halfpage.  If i is given, it is always interpreted relative to the current position.

       il     Display the next or the indicated line.

       if     Skip a page forward.  i must be a positive number and is always interpreted relative to the current position.

       iw or iz
              Behave as <newline> except that i becomes the new page size.

       . or ^L
              Redraw the screen.

       $      Advance to the last line of the input file.

       i/pattern/
              Search forward until the first or the i-th occurrence of the Basic Regular Expression pattern is found.  The search starts after the current page and stops at the end of the file.  No wrap-around is performed.  i must be a positive number.

       i?pattern? or i^pattern^
              Search backward until the first or the i-th occurrence of the Basic Regular Expression pattern is found.  The search starts before the current page and stops at the beginning of the file.  No wrap-around is performed.  i must be a positive number.

       The search commands accept an added letter.  If t is given, the line containing the pattern is displayed at the top of the screen, which is the default.  m selects the middle and b the bottom of the screen.  The selected position is used in following searches, too.

       in     Advance to the next file or i files forward.

       ip     Reread the previous file or i files backward.

       s filename
              Save the current file to the given filename.

       h      Display a command summary.

       !command
              Execute command using the shell.

       q or Q Quit.

       If the user presses the interrupt or quit key while pg reads from the input file or writes on the terminal, pg will immediately display the prompt.  In all other situations these keys will terminate pg.

```
###environment variables
```
       The following environment variables affect the behaviour of pg:

       COLUMNS
              Overrides the system-supplied number of columns if set.

       LANG, LC_ALL, LC_COLLATE, LC_CTYPE, LC_MESSAGES
              See locale(7).

       LINES  Overrides the system-supplied number of lines if set.

       SHELL  Used by the ! command.

       TERM   Determines the terminal type.

```
###see also
```
       cat(1), more(1), sh(1), terminfo(5), locale(7), regex(7), term(7)

```
###notes
```
       pg expects the terminal tabulators to be set every eight positions.

       Files that include NUL characters cannot be displayed by pg.

```
###availability
```
       The pg command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.



```
