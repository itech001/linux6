#more  

###name
```
     more — file perusal filter for crt viewing

```
###synopsis
```
     more [-dlfpcsu] [-num] [+/pattern] [+linenum] [file ...]

```
###description
```
     more is a filter for paging through text one screenful at a time.  This version is especially primitive.  Users should realize that less(1) provides more(1) emulation plus extensive enhancements.

```
###options
```
     Command-line options are described below.  Options are also taken from the environment variable MORE (make sure to precede them with a dash (``-'')) but command line options will override them.

     -num  This option specifies an integer which is the screen size (in lines).

     -d    more will prompt the user with the message "[Press space to continue, 'q' to quit.]" and will display "[Press 'h' for instructions.]" instead of ringing the bell when an illegal key is pressed.

     -l    more usually treats ^L (form feed) as a special character, and will pause after any line that contains a form feed.  The -l option will prevent this behavior.

     -f    Causes more to count logical, rather than screen lines (i.e., long lines are not folded).

     -p    Do not scroll.  Instead, clear the whole screen and then display the text.

           Notice that this option is switched on automatically if the executable is named page.

     -c    Do not scroll.  Instead, paint each screen from the top, clearing the remainder of each line as it is displayed.

     -s    Squeeze multiple blank lines into one.

     -u    Suppress underlining.

     +/    The +/ option specifies a string that will be searched for before each file is displayed.

     +num  Start at line number num.

```
###commands
```
     Interactive commands for more are based on vi(1).  Some commands may be preceded by a decimal number, called k in the descriptions below.  In the following descriptions, ^X means control-X.

     h or ?      Help: display a summary of these commands.  If you forget all the other commands, remember this one.

     SPACE       Display next k lines of text.  Defaults to current screen size.

     z           Display next k lines of text.  Defaults to current screen size.  Argument becomes new default.

     RETURN      Display next k lines of text.  Defaults to 1.  Argument becomes new default.

     d or ^D     Scroll k lines.  Default is current scroll size, initially 11.  Argument becomes new default.

     q or Q or INTERRUPT
                 Exit.

     s           Skip forward k lines of text.  Defaults to 1.

     f           Skip forward k screenfuls of text.  Defaults to 1.

     b or ^B     Skip backwards k screenfuls of text.  Defaults to 1.  Only works with files, not pipes.

     '           Go to place where previous search started.

     =           Display current line number.

     /pattern    Search for kth occurrence of regular expression.  Defaults to 1.

     n           Search for kth occurrence of last r.e.  Defaults to 1.

     !<cmd> or :!<cmd>
                 Execute <cmd> in a subshell

     v           Start up an editor at current line.  The editor is taken from the environment variable VISUAL if defined, or EDITOR if VISUAL is not defined, or defaults to "vi" if neither VISUAL nor EDITOR is defined.

     ^L          Redraw screen

     :n          Go to kth next file.  Defaults to 1.

     :p          Go to kth previous file.  Defaults to 1.

     :f          Display current file name and line number

     .           Repeat previous command

```
###environment
```
     More utilizes the following environment variables, if they exist:

     MORE        This variable may be set with favored options to more.

     SHELL       Current shell in use (normally set by the shell at login time).

     TERM        Specifies terminal type, used by more to get the terminal characteristics necessary to manipulate the screen.

```
###see also
```
     vi(1), less(1)

```
###authors
```
     Eric Shienbrood, UC Berkeley
     Modified by Geoff Peck, UCB to add underlining, single spacing
     Modified by John Foderaro, UCB to add -c and MORE environment variable

```
###history
```
     The more command appeared in 3.0BSD.  This man page documents more version 5.19 (Berkeley 6/29/88), which is currently in use in the Linux community.  Documentation was produced using several other versions of the man page, and extensive inspection of the source code.

```
###availability
```
     The more command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.

```
