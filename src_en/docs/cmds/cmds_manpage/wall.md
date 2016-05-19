#wall  

###name
```
     wall — write a message to users

```
###synopsis
```
     wall [-n] [-t TIMEOUT] [file]

```
###description
```
     Wall displays the contents of file or, by default, its standard input, on the terminals of all currently logged in users. The command will cut over 79 character long lines to new lines. Short lines are white space padded to have 79 characters. The command will always put carriage return and new line at the end of each line.

     Only the super-user can write on the terminals of users who have chosen to deny messages or are using a program which automatically denies messages.

     Reading from a file is refused when the invoker is not superuser and the program is suid or sgid.

```
###options
```
     -n, --nobanner
                 Supress banner

     -t, --timeout TIMEOUT
                 Write timeout to terminals in seconds. Argument must be positive integer. Default value is 300 seconds, which is a legacy from time when people ran terminals over modem lines.

     -V, --version
                 Output version and exit.

     -h, --help  Output help and exit.

```
###see also
```
     mesg(1), talk(1), write(1), shutdown(8)

```
###history
```
     A wall command appeared in Version 7 AT&T UNIX.

```
###availability
```
     The wall command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.

```
