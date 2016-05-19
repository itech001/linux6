#ul  

###name
```
     ul — do underlining

```
###synopsis
```
     ul [-i] [-t terminal] [file ...]

```
###description
```
     The ul utility reads the named files (or standard input if none are given) and translates occurrences of underscores to the sequence which indicates underlining for the terminal in use, as specified by the environment variable TERM.  The file /etc/termcap is read to determine the appropriate sequences for underlining.  If the terminal is incapable of underlining, but is capable of a standout mode then that is used instead.  If the terminal can overstrike, or handles underlining automatically, ul degenerates to cat(1).  If the terminal cannot underline, underlining is ignored.  During the translation some other special characters also get translated.  E.g. TAB gets expanded to spaces.

     The following options are available:

     -i      Underlining is indicated by a separate line containing appropriate dashes ‘-’; this is useful when you want to look at the underlining which is present in an nroff(1) output stream on a CRT-terminal.

     -t terminal
             Overrides the terminal type specified in the environment with terminal.

```
###environment
```
     The LANG, LC_ALL, LC_CTYPE and TERM environment variables affect the execution of ul as described in environ(7).

```
###exit status
```
     The ul utility exits 0 on success, and >0 if an error occurs.

```
###see also
```
     colcrt(1), man(1), nroff(1)

```
###history
```
     The ul command appeared in 3.0BSD.

```
###bugs
```
     The nroff(1) command usually outputs a series of backspaces and underlines intermixed with the text to indicate underlining.  No attempt is made to optimize the backward motion.

```
