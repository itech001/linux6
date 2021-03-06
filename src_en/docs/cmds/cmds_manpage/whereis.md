#whereis  



###name
```
       whereis - locate the binary, source, and manual page files for a command

```
###synopsis
```
       whereis [-bmsu] [-BMS directory...  -f] filename...

```
###description
```
       whereis locates source/binary and manuals sections for specified files.  The supplied names are first stripped of leading pathname components and any (single) trailing extension of the form .ext, for example, .c.  Prefixes of s.  resulting from use of source code control are also dealt with.  whereis then attempts to locate the desired program in a list of standard Linux places.

```
###options
```
       -b     Search only for binaries.

       -m     Search only for manual sections.

       -s     Search only for sources.

       -u     Search for unusual entries.  A file is said to be unusual if it does not have one entry of each requested type.  Thus `whereis  -m  -u  *' asks for those files in the current directory which have no documentation.

       -B     Change or otherwise limit the places where whereis searches for binaries.

       -M     Change or otherwise limit the places where whereis searches for manual sections.

       -S     Change or otherwise limit the places where whereis searches for sources.

       -f     Terminate the last directory list and signals the start of file names, and must be used when any of the -B, -M, or -S options are used.

```
###example
```
       Find all files in /usr/bin which are not documented in /usr/man/man1 with source in /usr/src:

              example% cd /usr/bin
              example% whereis -u -M /usr/man/man1 -S /usr/src -f *

```
###files
```
       /{bin,sbin,etc}

       /usr/{lib,bin,old,new,local,games,include,etc,src,man,sbin,
                           X386,TeX,g++-include}

       /usr/local/{X386,TeX,X11,include,lib,man,etc,bin,games,emacs}

```
###see also
```
       chdir(2V)

```
###bugs
```
       Since whereis uses chdir(2V) to run faster, pathnames given with the -M, -S, or -B must be full; that is, they must begin with a `/'.

       whereis has a hard-coded path, so may not always find what you're looking for.

```
###availability
```
       The whereis command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.



```
