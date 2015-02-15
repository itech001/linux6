#mesg  



###name
```
       mesg - control write access to your terminal

```
###synopsis
```
       mesg [y|n]

```
###description
```
       Mesg controls the access to your terminal by others.  It's typically used to allow or disallow other users to write to your terminal (see write(1)).

```
###options
```
       y      Allow write access to your terminal.

       n      Disallow write access to your terminal.

       If no option is given, mesg prints out the current access state of your terminal.

```
###notes
```
       Mesg assumes that its standard input is connected to your terminal. That also means that if you are logged in multiple times, you can get/set the mesg status of other sessions by using redirection.  For example "mesg n < /dev/pts/46".

```
###author
```
       Miquel van Smoorenburg (miquels@cistron.nl)

```
###see also
```
       talk(1), write(1), wall(1)



```
