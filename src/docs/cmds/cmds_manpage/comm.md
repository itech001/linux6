#comm  



###name
```
       comm - compare two sorted files line by line

```
###synopsis
```
       comm [OPTION]... FILE1 FILE2

```
###description
```
       Compare sorted files FILE1 and FILE2 line by line.

       With no options, produce three-column output.  Column one contains lines unique to FILE1, column two contains lines unique to FILE2, and column three contains lines common to both files.

       -1     suppress column 1 (lines unique to FILE1)

       -2     suppress column 2 (lines unique to FILE2)

       -3     suppress column 3 (lines that appear in both files)

       --check-order
              check that the input is correctly sorted, even if all input lines are pairable

       --nocheck-order
              do not check that the input is correctly sorted

       --output-delimiter=STR
              separate columns with STR

       --help display this help and exit

       --version
              output version information and exit

       Note, comparisons honor the rules specified by 'LC_COLLATE'.

```
###examples
```
       comm -12 file1 file2
              Print only lines present in both file1 and file2.

       comm -3 file1 file2
              Print lines in file1 not in file2, and vice versa.

```
###author
```
       Written by Richard M. Stallman and David MacKenzie.

```
###reporting bugs
```
       Report comm bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report comm translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       join(1), uniq(1)

       The full documentation for comm is maintained as a Texinfo manual.  If the info and comm programs are properly installed at your site, the command

              info coreutils 'comm invocation'

       should give you access to the complete manual.



```