#diff  



###name
```
       diff - compare files line by line

```
###synopsis
```
       diff [OPTION]... FILES

```
###description
```
       Compare FILES line by line.

       Mandatory arguments to long options are mandatory for short options too.

       --normal
              output a normal diff (the default)

       -q, --brief
              report only when files differ

       -s, --report-identical-files
              report when two files are the same

       -c, -C NUM, --context[=NUM]
              output NUM (default 3) lines of copied context

       -u, -U NUM, --unified[=NUM]
              output NUM (default 3) lines of unified context

       -e, --ed
              output an ed script

       -n, --rcs
              output an RCS format diff

       -y, --side-by-side
              output in two columns

       -W, --width=NUM
              output at most NUM (default 130) print columns

       --left-column
              output only the left column of common lines

       --suppress-common-lines
              do not output common lines

       -p, --show-c-function
              show which C function each change is in

       -F, --show-function-line=RE
              show the most recent line matching RE

       --label LABEL
              use LABEL instead of file name (can be repeated)

       -t, --expand-tabs
              expand tabs to spaces in output

       -T, --initial-tab
              make tabs line up by prepending a tab

       --tabsize=NUM
              tab stops every NUM (default 8) print columns

       --suppress-blank-empty
              suppress space or tab before empty output lines

       -l, --paginate
              pass output through `pr' to paginate it

       -r, --recursive
              recursively compare any subdirectories found

       -N, --new-file
              treat absent files as empty

       --unidirectional-new-file
              treat absent first files as empty

       --ignore-file-name-case
              ignore case when comparing file names

       --no-ignore-file-name-case
              consider case when comparing file names

       -x, --exclude=PAT
              exclude files that match PAT

       -X, --exclude-from=FILE
              exclude files that match any pattern in FILE

       -S, --starting-file=FILE
              start with FILE when comparing directories

       --from-file=FILE1
              compare FILE1 to all operands; FILE1 can be a directory

       --to-file=FILE2
              compare all operands to FILE2; FILE2 can be a directory

       -i, --ignore-case
              ignore case differences in file contents

       -E, --ignore-tab-expansion
              ignore changes due to tab expansion

       -Z, --ignore-trailing-space
              ignore white space at line end

       -b, --ignore-space-change
              ignore changes in the amount of white space

       -w, --ignore-all-space
              ignore all white space

       -B, --ignore-blank-lines
              ignore changes whose lines are all blank

       -I, --ignore-matching-lines=RE
              ignore changes whose lines all match RE

       -a, --text
              treat all files as text

       --strip-trailing-cr
              strip trailing carriage return on input

       -D, --ifdef=NAME
              output merged file with `#ifdef NAME' diffs

       --GTYPE-group-format=GFMT
              format GTYPE input groups with GFMT

       --line-format=LFMT
              format all input lines with LFMT

       --LTYPE-line-format=LFMT
              format LTYPE input lines with LFMT

              These format options provide fine-grained control over the output

              of diff, generalizing -D/--ifdef.

       LTYPE is `old', `new', or `unchanged'.
              GTYPE is LTYPE or `changed'.

              GFMT (only) may contain:

       %<     lines from FILE1

       %>     lines from FILE2

       %=     lines common to FILE1 and FILE2

       %[-][WIDTH][.[PREC]]{doxX}LETTER
              printf-style spec for LETTER

              LETTERs are as follows for new group, lower case for old group:

       F      first line number

       L      last line number

       N      number of lines = L-F+1

       E      F-1

       M      L+1

       %(A=B?T:E)
              if A equals B then T else E

              LFMT (only) may contain:

       %L     contents of line

       %l     contents of line, excluding any trailing newline

       %[-][WIDTH][.[PREC]]{doxX}n
              printf-style spec for input line number

              Both GFMT and LFMT may contain:

       %%     %

       %c'C'  the single character C

       %c'\OOO'
              the character with octal code OOO

       C      the character C (other characters represent themselves)

       -d, --minimal
              try hard to find a smaller set of changes

       --horizon-lines=NUM
              keep NUM lines of the common prefix and suffix

       --speed-large-files
              assume large files and many scattered small changes

       --help display this help and exit

       -v, --version
              output version information and exit

       FILES are `FILE1 FILE2' or `DIR1 DIR2' or `DIR FILE...' or `FILE... DIR'.  If --from-file or --to-file is given, there are no restrictions on FILE(s).  If a FILE is `-', read standard input.  Exit status is 0 if inputs are the same, 1 if different, 2 if trouble.

```
###author
```
       Written by Paul Eggert, Mike Haertel, David Hayes, Richard Stallman, and Len Tower.

```
###reporting bugs
```
       Report bugs to: bug-diffutils@gnu.org
       GNU diffutils home page: <http://www.gnu.org/software/diffutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>

```
###copyright
```
       Copyright © 2011 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       wdiff(1), cmp(1), diff3(1), sdiff(1), patch(1)

       The full documentation for diff is maintained as a Texinfo manual.  If the info and diff programs are properly installed at your site, the command

              info diff

       should give you access to the complete manual.



```