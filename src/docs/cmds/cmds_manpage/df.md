#df  



###name
```
       df - report file system disk space usage

```
###synopsis
```
       df [OPTION]... [FILE]...

```
###description
```
       This manual page documents the GNU version of df.  df displays the amount of disk space available on the file system containing each file name argument.  If no file name is given, the space available on all currently mounted file systems is shown.  Disk space is shown in 1K blocks by default, unless the environment variable POSIXLY_CORRECT is set, in which case 512-byte blocks are used.

       If an argument is the absolute file name of a disk device node containing a mounted file system, df shows the space available on that file system rather than on the file system containing the device node (which is always the root file system).  This version of df cannot show the space available on unmounted file systems, because on most kinds of systems doing so requires very nonportable intimate knowledge of file system structures.

```
###options
```
       Show information about the file system on which each FILE resides, or all file systems by default.

       Mandatory arguments to long options are mandatory for short options too.

       -a, --all
              include dummy file systems

       -B, --block-size=SIZE
              scale sizes by SIZE before printing them.  E.g., '-BM' prints sizes in units of 1,048,576 bytes.  See SIZE format below.

       --total
              produce a grand total

       -h, --human-readable
              print sizes in human readable format (e.g., 1K 234M 2G)

       -H, --si
              likewise, but use powers of 1000 not 1024

       -i, --inodes
              list inode information instead of block usage

       -k     like --block-size=1K

       -l, --local
              limit listing to local file systems

       --no-sync
              do not invoke sync before getting usage info (default)

       --output[=FIELD_LIST]
              use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted.

       -P, --portability
              use the POSIX output format

       --sync invoke sync before getting usage info

       -t, --type=TYPE
              limit listing to file systems of type TYPE

       -T, --print-type
              print file system type

       -x, --exclude-type=TYPE
              limit listing to file systems not of type TYPE

       -v     (ignored)

       --help display this help and exit

       --version
              output version information and exit

       Display values are in units of the first available SIZE from --block-size, and the DF_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.  Otherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).

       SIZE is an integer and optional unit (example: 10M is 10*1024*1024).  Units are K, M, G, T, P, E, Z, Y (powers of 1024) or KB, MB, ... (powers of 1000).

       FIELD_LIST is a comma-separated list of columns to be included.  Valid field names are: 'source', 'fstype', 'itotal', 'iused', 'iavail', 'ipcent', 'size', 'used', 'avail', 'pcent' and 'target' (see info page).

```
###author
```
       Written by Torbjorn Granlund, David MacKenzie, and Paul Eggert.

```
###reporting bugs
```
       Report df bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report df translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for df is maintained as a Texinfo manual.  If the info and df programs are properly installed at your site, the command

              info coreutils 'df invocation'

       should give you access to the complete manual.



```
