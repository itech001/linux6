#pico  



###name
```
       nano - Nano's ANOther editor, an enhanced free Pico clone


```
###synopsis
```
       nano [OPTIONS] [[+LINE,COLUMN] FILE]...


```
###description
```
       This manual page briefly documents the nano command.

       nano is a small, free and friendly editor which aims to replace Pico, the default editor included in the non-free Pine package.  Rather than just copying Pico's look and feel, nano also implements some missing (or disabled by default) features in Pico, such as "search and replace" and "go to line and column number".


```
###options
```
       +LINE,COLUMN
              Places cursor at line number LINE and column number COLUMN (at least one of which must be specified) on startup, instead of the default of line 1, column 1.

       -?     Same as -h (--help).

       -A (--smarthome)
              Make the Home key smarter.  When Home is pressed anywhere but at the very beginning of non-whitespace characters on a line, the cursor will jump to that beginning (either forwards or backwards).  If the cursor is already at that position, it will jump to the true beginning of the line.

       -B (--backup)
              When saving a file, back up the previous version of it to the current filename suffixed with a ~.

       -C dir (--backupdir=dir)
              Set the directory where nano puts unique backup files if file backups are enabled.

       -D (--boldtext)
              Use bold text instead of reverse video text.

       -E (--tabstospaces)
              Convert typed tabs to spaces.

       -F (--multibuffer)
              Enable multiple file buffers, if available.

       -H (--historylog)
              Log search and replace strings to ~/.nano_history, so they can be retrieved in later sessions, if nanorc support is available.

       -I (--ignorercfiles)
              Don't look at SYSCONFDIR/nanorc or ~/.nanorc, if nanorc support is available.

       -K (--rebindkeypad)
              Interpret the numeric keypad keys so that they all work properly.  You should only need to use this option if they don't, as mouse support won't work properly with this option enabled.

       -L (--nonewlines)
              Don't add newlines to the ends of files.

       -N (--noconvert)
              Disable automatic conversion of files from DOS/Mac format.

       -O (--morespace)
              Use the blank line below the titlebar as extra editing space.

       -Q str (--quotestr=str)
              Set the quoting string for justifying.  The default is "^([ \t]*[#:>\|}])+" if extended regular expression support is available, or "> " otherwise.  Note that \t stands for a Tab.

       -R (--restricted)
              Restricted mode: don't read or write to any file not specified on the command line; read any nanorc files; allow suspending; allow a file to be appended to, prepended to, or saved under a different name if it already has one; or use backup files or spell checking.  Also accessible by invoking nano with any name beginning with 'r' (e.g.  "rnano").

       -S (--smooth)
              Enable smooth scrolling.  Text will scroll line-by-line, instead of the usual chunk-by-chunk behavior.

       -T cols (--tabsize=cols)
              Set the size (width) of a tab to cols columns.  The value of cols must be greater than 0.  The default value is 8.

       -U (--quickblank)
              Do quick statusbar blanking.  Statusbar messages will disappear after 1 keystroke instead of 25.  Note that -c overrides this.

       -V (--version)
              Show the current version number and exit.

       -W (--wordbounds)
              Detect word boundaries more accurately by treating punctuation characters as part of a word.

       -Y str (--syntax=str)
              Specify a specific syntax highlighting from the nanorc to use, if available.

       -c (--const)
              Constantly show the cursor position.  Note that this overrides -U.

       -d (--rebinddelete)
              Interpret the Delete key differently so that both Backspace and Delete work properly.  You should only need to use this option if Backspace acts like Delete on your system.

       -h (--help)
              Show a summary of command line options and exit.

       -i (--autoindent)
              Indent new lines to the previous line's indentation.  Useful when editing source code.

       -k (--cut)
              Enable cut from cursor to end of line.

       -l (--nofollow)
              If the file being edited is a symbolic link, replace the link with a new file instead of following it.  Good for editing files in /tmp, perhaps?

       -m (--mouse)
              Enable mouse support, if available for your system.  When enabled, mouse clicks can be used to place the cursor, set the mark (with a double click), and execute shortcuts.  The mouse will work in the X Window System, and on the console when gpm is running.

       -o dir (--operatingdir=dir)
              Set operating directory.  Makes nano set up something similar to a chroot.

       -p (--preserve)
              Preserve the XON and XOFF sequences (^Q and ^S) so they will be caught by the terminal.

       -q (--quiet)
              Do not report errors in the nanorc file and ask them to be acknowledged by pressing Enter at startup.

       -r cols (--fill=cols)
              Wrap lines at column cols.  If this value is 0 or less, wrapping will occur at the width of the screen less cols columns, allowing the wrap point to vary along with the width of the screen if the screen is resized.  The default value is -8.

       -s prog (--speller=prog)
              Enable alternative spell checker command.

       -t (--tempfile)
              Always save changed buffer without prompting.  Same as Pico's -t option.

       -u (--undo)
              Enable experimental generic-purpose undo code.  By default, the undo and redo shortcuts are Meta-U and Meta-E, respectively.

       -v (--view)
              View file (read only) mode.

       -w (--nowrap)
              Disable wrapping of long lines.

       -x (--nohelp)
              Disable help screen at bottom of editor.

       -z (--suspend)
              Enable suspend ability.

       -$ (--softwrap)
              Enable 'soft wrapping'.  nano will attempt to display the entire contents of a line, even if it is longer than the screen width.  Since '$' normally refers to a variable in the Unix shell, you should specify this option last when using other options (e.g. 'nano -wS$') or pass it separately (e.g. 'nano -wS -$').

       -a, -b, -e, -f, -g, -j
              Ignored, for compatibility with Pico.


```
###initialization file
```
       nano will read initialization files in the following order: SYSCONFDIR/nanorc, then ~/.nanorc.  Please see nanorc(5) and the example file nanorc.sample, both of which should be provided with nano.


```
###notes
```
       If no alternative spell checker command is specified on the command line or in one of the nanorc files, nano will check the SPELL environment variable for one.

       In some cases nano will try to dump the buffer into an emergency file.  This will happen mainly if nano receives a SIGHUP or SIGTERM or runs out of memory.  It will write the buffer into a file named nano.save if the buffer didn't have a name already, or will add a ".save" suffix to the current filename.  If an emergency file with that name already exists in the current directory, it will add ".save" plus a number (e.g. ".save.1") to the current filename in order to make it unique.  In multibuffer mode, nano will write all the open buffers to their respective emergency files.


```
###bugs
```
       Please send any comments or bug reports to nano@nano-editor.org.

       The nano mailing list is available from nano-devel@gnu.org.

       To subscribe, email to nano-devel-request@gnu.org with a subject of "subscribe".


```
###homepage
```
       http://www.nano-editor.org/


```
###see also
```
       nanorc(5)
       /usr/share/doc/nano/ (or equivalent on your system)

```
###author
```
       Chris Allegretta <chrisa@asty.org>, et al (see AUTHORS and THANKS for details).  This manual page was originally written by Jordi Mallach <jordi@gnu.org>, for the Debian system (but may be used by others).



```
