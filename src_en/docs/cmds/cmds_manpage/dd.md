#dd  



###name
```
       dd - convert and copy a file

```
###synopsis
```
       dd [OPERAND]...
       dd OPTION

```
###description
```
       Copy a file, converting and formatting according to the operands.

       bs=BYTES
              read and write up to BYTES bytes at a time

       cbs=BYTES
              convert BYTES bytes at a time

       conv=CONVS
              convert the file as per the comma separated symbol list

       count=N
              copy only N input blocks

       ibs=BYTES
              read up to BYTES bytes at a time (default: 512)

       if=FILE
              read from FILE instead of stdin

       iflag=FLAGS
              read as per the comma separated symbol list

       obs=BYTES
              write BYTES bytes at a time (default: 512)

       of=FILE
              write to FILE instead of stdout

       oflag=FLAGS
              write as per the comma separated symbol list

       seek=N skip N obs-sized blocks at start of output

       skip=N skip N ibs-sized blocks at start of input

       status=WHICH
              WHICH info to suppress outputting to stderr; 'noxfer' suppresses transfer stats, 'none' suppresses all

       N and BYTES may be followed by the following multiplicative suffixes: c =1, w =2, b =512, kB =1000, K =1024, MB =1000*1000, M =1024*1024, xM =M GB =1000*1000*1000, G =1024*1024*1024, and so on for T, P, E, Z, Y.

       Each CONV symbol may be:

       ascii  from EBCDIC to ASCII

       ebcdic from ASCII to EBCDIC

       ibm    from ASCII to alternate EBCDIC

       block  pad newline-terminated records with spaces to cbs-size

       unblock
              replace trailing spaces in cbs-size records with newline

       lcase  change upper case to lower case

       ucase  change lower case to upper case

       sparse try to seek rather than write the output for NUL input blocks

       swab   swap every pair of input bytes

       sync   pad every input block with NULs to ibs-size; when used with block or unblock, pad with spaces rather than NULs

       excl   fail if the output file already exists

       nocreat
              do not create the output file

       notrunc
              do not truncate the output file

       noerror
              continue after read errors

       fdatasync
              physically write output file data before finishing

       fsync  likewise, but also write metadata

       Each FLAG symbol may be:

       append append mode (makes sense only for output; conv=notrunc suggested)

       direct use direct I/O for data

       directory
              fail unless a directory

       dsync  use synchronized I/O for data

       sync   likewise, but also for metadata

       fullblock
              accumulate full blocks of input (iflag only)

       nonblock
              use non-blocking I/O

       noatime
              do not update access time

       nocache
              discard cached data

       noctty do not assign controlling terminal from file

       nofollow
              do not follow symlinks

       count_bytes
              treat 'count=N' as a byte count (iflag only)

       skip_bytes
              treat 'skip=N' as a byte count (iflag only)

       seek_bytes
              treat 'seek=N' as a byte count (oflag only)

       Sending a USR1 signal to a running 'dd' process makes it print I/O statistics to standard error and then resume copying.

              $ dd if=/dev/zero of=/dev/null& pid=$!
              $ kill -USR1 $pid; sleep 1; kill $pid

              18335302+0 records in 18335302+0 records out 9387674624 bytes (9.4 GB) copied, 34.6279 seconds, 271 MB/s

       Options are:

       --help display this help and exit

       --version
              output version information and exit

```
###author
```
       Written by Paul Rubin, David MacKenzie, and Stuart Kemp.

```
###reporting bugs
```
       Report dd bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report dd translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for dd is maintained as a Texinfo manual.  If the info and dd programs are properly installed at your site, the command

              info coreutils 'dd invocation'

       should give you access to the complete manual.



```
