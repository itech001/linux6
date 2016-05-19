#rename  



###name
```
       rename - renames multiple files

```
###synopsis
```
       rename [ -v ] [ -n ] [ -f ] perlexpr [ files ]

```
###description
```
       "rename" renames the filenames supplied according to the rule specified as the first argument.  The perlexpr argument is a Perl expression which is expected to modify the $_ string in Perl for at least some of the filenames specified.  If a given filename is not modified by the expression, it will not be renamed.  If no filenames are given on the command line, filenames will be read via standard input.

       For example, to rename all files matching "*.bak" to strip the extension, you might say

               rename 's/\.bak$//' *.bak

       To translate uppercase names to lower, you'd use

               rename 'y/A-Z/a-z/' *

```
###options
```
       -v, --verbose
               Verbose: print names of files successfully renamed.

       -n, --no-act
               No Action: show what files would have been renamed.

       -f, --force
               Force: overwrite existing files.

```
###environment
```
       No environment variables are used.

```
###author
```
       Larry Wall

```
###see also
```
       mv(1), perl(1)

```
###diagnostics
```
       If you give an invalid Perl expression you'll get a syntax error.

```
###bugs
```
       The original "rename" did not check for the existence of target filenames, so had to be used with care.  I hope I've fixed that (Robin Barker).



```
