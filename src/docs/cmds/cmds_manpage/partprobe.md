#partprobe  



###name
```
       partprobe - inform the OS of partition table changes

```
###synopsis
```
       partprobe [-d] [-s] [devices...]

```
###description
```
       This manual page documents briefly the partprobe command.

       partprobe is a program that informs the operating system kernel of partition table changes, by requesting that the operating system re-read the partition table.

```
###options
```
       This program uses short UNIX style options.

       -d     Don't update the kernel.

       -s     Show a summary of devices and their partitions.

       -h     Show summary of options.

       -v     Show version of program.

```
###see also
```
       parted(8).

```
###author
```
       This manual page was written by Timshel Knoll <timshel@debian.org>, for the Debian GNU/Linux system (but may be used by others).



```
