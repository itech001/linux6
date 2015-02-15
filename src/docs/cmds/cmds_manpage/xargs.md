#xargs  



###name
```
       xargs - build and execute command lines from standard input

```
###synopsis
```
       xargs [-0prtx] [-E eof-str] [-e[eof-str]] [--eof[=eof-str]] [--null] [-d delimiter] [--delimiter delimiter] [-I replace-str] [-i[replace-str]] [--replace[=replace-str]] [-l[max-lines]] [-L max-lines] [--max-lines[=max-lines]] [-n max-args] [--max-args=max-args] [-s max-chars] [--max-chars=max-chars] [-P max-procs] [--max-procs=max-procs] [--interactive] [--verbose] [--exit] [--no-run-if-empty] [--arg-file=file] [--show-limits] [--version] [--help] [command [initial-arguments]]

```
###description
```
       This manual page documents the GNU version of xargs.  xargs reads items from the standard input, delimited by blanks (which can be protected with double or single quotes or a backslash) or newlines, and executes the command (default is /bin/echo) one or more times with any initial-arguments followed by items read from standard input.  Blank lines on the standard input are ignored.

       Because Unix filenames can contain blanks and newlines, this default behaviour is often problematic; filenames containing blanks and/or newlines are incorrectly processed by xargs.  In these situations it is better to use the -0 option, which prevents such problems.   When using this option you will need to ensure that the program which produces the input for xargs also uses a null character as a separator.  If that program is GNU find for example, the -print0 option does this for you.

       If any invocation of the command exits with a status of 255, xargs will stop immediately without reading any further input.  An error message is issued on stderr when this happens.

```
###options
```
       --arg-file=file
       -a file
              Read items from file instead of standard input.  If you use this option, stdin remains unchanged when commands are run.  Otherwise, stdin is redirected from /dev/null.

       --null
       -0     Input items are terminated by a null character instead of by whitespace, and the quotes and backslash are not special (every character is taken literally).  Disables the end of file string, which is treated like any other argument.  Useful when input items might contain white space, quote marks, or backslashes.  The GNU find -print0 option produces input suitable for this mode.


       --delimiter=delim
       -d delim
              Input items are terminated by the specified character.  Quotes and backslash are not special; every character in the input is taken literally.  Disables the end-of-file string, which is treated like any other argument.  This can be used when the input consists of simply newline-separated items, although it is almost always better to design your program to use --null where this is possible.  The specified delimiter may be a single character, a C-style character escape such as \n, or an octal or hexadecimal escape code.  Octal and hexadecimal escape codes are understood as for the printf command.   Multibyte characters are not supported.


       -E eof-str
              Set the end of file string to eof-str.  If the end of file string occurs as a line of input, the rest of the input is ignored.  If neither -E nor -e is used, no end of file string is used.

       --eof[=eof-str]
       -e[eof-str]
              This option is a synonym for the -E option.  Use -E instead, because it is POSIX compliant while this option is not.  If eof-str is omitted, there is no end of file string.  If neither -E nor -e is used, no end of file string is used.

       --help Print a summary of the options to xargs and exit.

       -I replace-str
              Replace occurrences of replace-str in the initial-arguments with names read from standard input.  Also, unquoted blanks do not terminate input items; instead the separator is the newline character.  Implies -x and -L 1.

       --replace[=replace-str]
       -i[replace-str]
              This option is a synonym for -Ireplace-str if replace-str is specified, and for -I{} otherwise.  This option is deprecated; use -I instead.

       -L max-lines
              Use at most max-lines nonblank input lines per command line.  Trailing blanks cause an input line to be logically continued on the next input line.  Implies -x.

       --max-lines[=max-lines]
       -l[max-lines]
              Synonym for the -L option.  Unlike -L, the max-lines argument is optional.  If max-lines is not specified, it defaults to one.  The -l option is deprecated since the POSIX standard specifies -L instead.

       --max-args=max-args
       -n max-args
              Use at most max-args arguments per command line.  Fewer than max-args arguments will be used if the size (see the -s option) is exceeded, unless the -x option is given, in which case xargs will exit.

       --interactive
       -p     Prompt the user about whether to run each command line and read a line from the terminal.  Only run the command line if the response starts with `y' or `Y'.  Implies -t.

       --no-run-if-empty
       -r     If the standard input does not contain any nonblanks, do not run the command.  Normally, the command is run once even if there is no input.  This option is a GNU extension.

       --max-chars=max-chars
       -s max-chars
              Use at most max-chars characters per command line, including the command and initial-arguments and the terminating nulls at the ends of the argument strings.  The largest allowed value is system-dependent, and is calculated as the argument length limit for exec, less the size of your environment, less 2048 bytes of headroom.  If this value is more than 128KiB, 128Kib is used as the default value; otherwise, the default value is the maximum.  1KiB is 1024 bytes.

       --verbose
       -t     Print the command line on the standard error output before executing it.

       --version
              Print the version number of xargs and exit.

       --show-limits
              Display the limits on the command-line length which are imposed by the operating system, xargs' choice of buffer size and the -s option.  Pipe the input from /dev/null (and perhaps specify --no-run-if-empty) if you don't want xargs to do anything.

       --exit
       -x     Exit if the size (see the -s option) is exceeded.

       --max-procs=max-procs
       -P max-procs
              Run up to max-procs processes at a time; the default is 1.  If max-procs is 0, xargs will run as many processes as possible at a time.  Use the -n option with -P; otherwise chances are that only one exec will be done.

```
###examples
```
       find /tmp -name core -type f -print | xargs /bin/rm -f

       Find files named core in or below the directory /tmp and delete them.  Note that this will work incorrectly if there are any filenames containing newlines or spaces.

       find /tmp -name core -type f -print0 | xargs -0 /bin/rm -f

       Find files named core in or below the directory /tmp and delete them, processing filenames in such a way that file or directory names containing spaces or newlines are correctly handled.


       find /tmp -depth -name core -type f -delete

       Find files named core in or below the directory /tmp and delete them, but more efficiently than in the previous example (because we avoid the need to use fork(2) and exec(2) to launch rm and we don't need the extra xargs process).


       cut -d: -f1 < /etc/passwd | sort | xargs echo

       Generates a compact listing of all the users on the system.


       xargs sh -c 'emacs "$@" < /dev/tty' emacs

       Launches the minimum number of copies of Emacs needed, one after the other, to edit the files listed on xargs' standard input.  This example achieves the same effect as BSD's -o option, but in a more flexible and portable way.




```
###exit status
```
       xargs exits with the following status:
       0 if it succeeds
       123 if any invocation of the command exited with status 1-125
       124 if the command exited with status 255
       125 if the command is killed by a signal
       126 if the command cannot be run
       127 if the command is not found
       1 if some other error occurred.

       Exit codes greater than 128 are used by the shell to indicate that a program died due to a fatal signal.

```
###standards conformance
```
       As of GNU xargs version 4.2.9, the default behaviour of xargs is not to have a logical end-of-file marker.  POSIX (IEEE Std 1003.1, 2004 Edition) allows this.

       The -l and -i options appear in the 1997 version of the POSIX standard, but do not appear in the 2004 version of the standard.  Therefore you should use -L and -I instead, respectively.

       The POSIX standard allows implementations to have a limit on the size of arguments to the exec functions.  This limit could be as low as 4096 bytes including the size of the environment.  For scripts to be portable, they must not rely on a larger value.  However, I know of no implementation whose actual limit is that small.  The --show-limits option can be used to discover the actual limits in force on the current system.



```
###see also
```
       find(1), locate(1), locatedb(5), updatedb(1), fork(2), execvp(3), Finding Files (on-line in Info, or printed)

```
###bugs
```
       The -L option is incompatible with the -I option, but perhaps should not be.

       It is not possible for xargs to be used securely, since there will always be a time gap between the production of the list of input files and their use in the commands that xargs issues.  If other users have access to the system, they can manipulate the filesystem during this time window to force the action of the commands xargs runs to apply to files that you didn't intend.  For a more detailed discussion of this and related problems, please refer to the ``Security Considerations'' chapter in the findutils Texinfo documentation.  The -execdir option of find can often be used as a more secure alternative.

       When you use the -I option, each line read from the input is buffered internally.   This means that there is an upper limit on the length of input line that xargs will accept when used with the -I option.  To work around this limitation, you can use the -s option to increase the amount of buffer space that xargs uses, and you can also use an extra invocation of xargs to ensure that very long lines do not occur.  For example:

       somecommand | xargs -s 50000 echo | xargs -I '{}' -s 100000 rm '{}'

       Here, the first invocation of xargs has no input line length limit because it doesn't use the -i option.  The second invocation of xargs does have such a limit, but we have ensured that the it never encounters a line which is longer than it can handle.   This is not an ideal solution.  Instead, the -i option should not impose a line length limit, which is why this discussion appears in the BUGS section.  The problem doesn't occur with the output of find(1) because it emits just one filename per line.

       The best way to report a bug is to use the form at http://savannah.gnu.org/bugs/?group=findutils.  The reason for this is that you will then be able to track progress in fixing the problem.   Other comments about xargs(1) and about the findutils package in general can be sent to the bug-findutils mailing list.  To join the list, send email to bug-findutils-request@gnu.org.



```
