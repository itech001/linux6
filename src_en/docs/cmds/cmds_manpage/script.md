#script  

###name
```
     script — make typescript of terminal session

```
###synopsis
```
     script [-a] [-c command] [-e] [-f] [-q] [-t[=file]] [-V] [-h] [file]

```
###description
```
     script makes a typescript of everything printed on your terminal.  It is useful for students who need a hardcopy record of an interactive session as proof of an assignment, as the typescript file can be printed out later with lpr(1).

     If the argument file is given, script saves all dialogue in file.  If no file name is given, the typescript is saved in the file typescript.

     Options:

     -a, --append
             Append the output to file or typescript, retaining the prior contents.

     -c, --command command
             Run the command rather than an interactive shell.  This makes it easy for a script to capture the output of a program that behaves differently when its stdout is not a tty.

     -e, --return
             Return the exit code of the child process.  Uses the same format as bash termination on signal termination exit code is 128+n.

     -f, --flush
             Flush output after each write.  This is nice for telecooperation: one person does `mkfifo foo; script -f foo', and another can supervise real-time what is being done using `cat foo'.

     --force
             Allow the default output destination, i.e. the typescript file, to be a hard or symbolic link.  The command will follow a symbolic link.

     -q, --quiet
             Be quiet.

     -t, --timing[=file]
             Output timing data to standard error, or to file when given.  This data contains two fields, separated by a space.  The first field indicates how much time elapsed since the previous output.  The second field indicates how many characters were output this time.  This information can be used to replay typescripts with realistic typing and output delays.

     -V, --version
             Output version information and exit.

     -h, --help
             Output help and exit.

     The script ends when the forked shell exits (a control-D to exit the Bourne shell (sh(1)), and exit, logout or control-d (if ignoreeof is not set) for the C-shell, csh(1)).

     Certain interactive commands, such as vi(1), create garbage in the typescript file.  Script works best with commands that do not manipulate the screen, the results are meant to emulate a hardcopy terminal.

```
###environment
```
     The following environment variable is utilized by script:

     SHELL  If the variable SHELL exists, the shell forked by script will be that shell. If SHELL is not set, the Bourne shell is assumed. (Most shells set this variable automatically).

```
###see also
```
     csh(1) (for the history mechanism), scriptreplay(1).

```
###history
```
     The script command appeared in 3.0BSD.

```
###bugs
```
     Script places everything in the log file, including linefeeds and backspaces.  This is not what the naive user expects.

```
###availability
```
     The script command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.

```
