#md5sum  
MD5SUM(1)                                  User Commands                                  MD5SUM(1)



###name
```
       md5sum - compute and check MD5 message digest

```
###synopsis
```
       md5sum [OPTION]... [FILE]...

```
###description
```
       Print  or  check  MD5  (128-bit)  checksums.  With no FILE, or when FILE is -, read standard
       input.

       -b, --binary
              read in binary mode

       -c, --check
              read MD5 sums from the FILEs and check them

       --tag  create a BSD-style checksum

       -t, --text
              read in text mode (default)

   The following four options are useful only when verifying checksums:
       --quiet
              don't print OK for each successfully verified file

       --status
              don't output anything, status code shows success

       --strict
              exit non-zero for improperly formatted checksum lines

       -w, --warn
              warn about improperly formatted checksum lines

       --help display this help and exit

       --version
              output version information and exit

       The sums are computed as described in RFC 1321.  When checking, the input should be a former
       output  of  this  program.   The  default mode is to print a line with checksum, a character
       indicating input mode ('*' for binary, space for text), and name for each FILE.

       GNU coreutils online help: <http://www.gnu.org/software/coreutils/> Report  md5sum  transla‐
       tion bugs to <http://translationproject.org/team/>

```
###bugs
```
       The  MD5 algorithm should not be used any more for security related purposes.  Instead, bet‐
       ter use  an  SHA-2  algorithm,  implemented  in  the  programs  sha224sum(1),  sha256sum(1),
       sha384sum(1), sha512sum(1)

```
###author
```
       Written by Ulrich Drepper, Scott Miller, and David Madore.

```
###copyright
```
       Copyright  © 2014 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later
       <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to
       the extent permitted by law.

```
###see also
```
       The full documentation for md5sum is maintained as a Texinfo manual.  If the info and md5sum
       programs are properly installed at your site, the command

              info coreutils 'md5sum invocation'

       should give you access to the complete manual.



GNU coreutils 8.23                         September 2014                                 MD5SUM(1)
```
```
