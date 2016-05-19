#clear  



###name
```
       clear - clear the terminal screen

```
###synopsis
```
       clear

```
###description
```
       clear clears your screen if this is possible, including its scrollback buffer (if the extended "E3" capability is defined).  clear looks in the environment for the terminal type and then in the terminfo database to determine how to clear the screen.

       clear ignores any command-line parameters that may be present.

```
###see also
```
       tput(1), terminfo(5)

       This describes ncurses version 5.9 (patch 20140118).



```
