#cfdisk  



###name
```
       cfdisk - display or manipulate disk partition table

```
###synopsis
```
       cfdisk [-agvz] [-c cylinders] [-h heads] [-s sectors-per-track] [-P opt] [device]

```
###description
```
       cfdisk is a curses/slang based program for partitioning any hard disk drive.  Typical values of the device argument are:

              /dev/hda [default]
              /dev/hdb
              /dev/sda
              /dev/sdb
              /dev/sdc
              /dev/sdd

       In order to write the partition table cfdisk needs something called the `geometry' of the disk: the number of `heads' and the number of `sectors per track'. Linux does not use any geometry, so if the disk will not be accessed by other operating systems, you can safely accept the defaults that cfdisk chooses for you. The geometry used by cfdisk is found as follows. First the partition table is examined, to see what geometry was used by the previous program that changed it. If the partition table is empty, or contains garbage, or does not point at a consistent geometry, the kernel is asked for advice. If nothing works 255 heads and 63 sectors/track is assumed. The geometry can be overridden on the command line or by use of the `g' command. When partitioning an empty large modern disk, picking 255 heads and 63 sectors/track is always a good idea.  There is no need to set the number of cylinders, since cfdisk knows the disk size.

       Next, cfdisk tries to read the current partition table from the disk drive.  If it is unable to figure out the partition table, an error is displayed and the program will exit.  This might also be caused by incorrect geometry information, and can be overridden on the command line.  Another way around this problem is with the -z option.  This will ignore the partition table on the disk.

       The main display is composed of four sections, from top to bottom: the header, the partitions, the command line and a warning line.  The header contains the program name and version number followed by the disk drive and its geometry.  The partitions section always displays the current partition table.  The command line is the place where commands and text are entered.  The available commands are usually displayed in brackets.  The warning line is usually empty except when there is important information to be displayed.  The current partition is highlighted with reverse video (or an arrow if the -a option is given).  All partition specific commands apply to the current partition.

       The format of the partition table in the partitions section is, from left to right: Name, Flags, Partition Type, Filesystem Type and Size.  The name is the partition device name.  The flags can be Boot, which designates a bootable partition or NC, which stands for "Not Compatible with DOS or OS/2".  DOS, OS/2 and possibly other operating systems require the first sector of the first partition on the disk and all logical partitions to begin on the second head.  This wastes the second through the last sector of the first track of the first head (the first sector is taken by the partition table itself).  cfdisk allows you to recover these "lost" sectors with the maximize command (m).  Note: fdisk(8) and some early versions of DOS create all partitions with the number of sectors already maximized.  For more information, see the maximize command below.  The partition type can be one of Primary or Logical.  For unallocated space on the drive, the partition type can also be Pri/Log, or empty (if the space is unusable).  The filesystem type section displays the name of the filesystem used on the partition, if known.  If it is unknown, then Unknown and the hex value of the filesystem type are displayed.  A special case occurs when there are sections of the disk drive that cannot be used (because all of the primary partitions are used).  When this is detected, the filesystem type is displayed as Unusable.  The size field displays the size of the partition in megabytes (by default).  It can also display the size in sectors and cylinders (see the change units command below).  If an asterisk (*) appears after the size, this means that the partition is not aligned on cylinder boundaries.

DOS 6.x WARNING
       The DOS 6.x FORMAT command looks for some information in the first sector of the data area of the partition, and treats this information as more reliable than the information in the partition table.  DOS FORMAT expects DOS FDISK to clear the first 512 bytes of the data area of a partition whenever a size change occurs.  DOS FORMAT will look at this extra information even if the /U flag is given -- we consider this a bug in DOS FORMAT and DOS FDISK.

       The bottom line is that if you use cfdisk or fdisk to change the size of a DOS partition table entry, then you must also use dd to zero the first 512 bytes of that partition before using DOS FORMAT to format the partition.  For example, if you were using cfdisk to make a DOS partition table entry for /dev/hda1, then (after exiting fdisk or cfdisk and rebooting Linux so that the partition table information is valid) you would use the command "dd if=/dev/zero of=/dev/hda1 bs=512 count=1" to zero the first 512 bytes of the partition. Note:

       BE EXTREMELY CAREFUL if you use the dd command, since a small typo can make all of the data on your disk useless.

       For best results, you should always use an OS-specific partition table program.  For example, you should make DOS partitions with the DOS FDISK program and Linux partitions with the Linux fdisk or Linux cfdisk program.


```
###commands
```
       cfdisk commands can be entered by pressing the desired key (pressing Enter after the command is not necessary).  Here is a list of the available commands:

       b      Toggle bootable flag of the current partition.  This allows you to select which primary partition is bootable on the drive.

       d      Delete the current partition.  This will convert the current partition into free space and merge it with any free space immediately surrounding the current partition.  A partition already marked as free space or marked as unusable cannot be deleted.

       g      Change the disk geometry (cylinders, heads, or sectors-per-track).  WARNING: This option should only be used by people who know what they are doing.  A command line option is also available to change the disk geometry.  While at the change disk geometry command line, you can choose to change cylinders (c), heads (h), and sectors per track (s).  The default value will be printed at the prompt which you can accept by simply pressing the Enter key, or you can exit without changes by pressing the ESC key.  If you want to change the default value, simply enter the desired value and press Enter.  The altered disk parameter values do not take effect until you return to the main menu (by pressing Enter or ESC at the change disk geometry command line).  If you change the geometry such that the disk appears larger, the extra sectors are added at the end of the disk as free space.  If the disk appears smaller, the partitions that are beyond the new last sector are deleted and the last partition on the drive (or the free space at the end of the drive) is made to end at the new last sector.

       h      Print the help screen.

       m      Maximize disk usage of the current partition.  This command will recover the unused space between the partition table and the beginning of the partition, but at the cost of making the partition incompatible with DOS, OS/2 and possibly other operating systems.  This option will toggle between maximal disk usage and DOS, OS/2, etc. compatible disk usage.  The default when creating a partition is to create DOS, OS/2, etc. compatible partitions.

       n      Create new partition from free space.  If the partition type is Primary or Logical, a partition of that type will be created, but if the partition type is Pri/Log, you will be prompted for the type you want to create.  Be aware that (1) there are only four slots available for primary partitions and (2) since there can be only one extended partition, which contains all of the logical drives, all of the logical drives must be contiguous (with no intervening primary partition).  cfdisk next prompts you for the size of the partition you want to create.  The default size, equal to the entire free space of the current partition, is displayed in megabytes.  You can either press the Enter key to accept the default size or enter a different size at the prompt.  cfdisk accepts size entries in megabytes (M) [default], kilobytes (K), cylinders (C) and sectors (S) by entering the number immediately followed by one of (M, K, C or S).  If the partition fills the free space available, the partition is created and you are returned to the main command line.  Otherwise, the partition can be created at the beginning or the end of the free space, and cfdisk will ask you to choose where to place the partition.  After the partition is created, cfdisk automatically adjusts the other partitions' partition types if all of the primary partitions are used.

       p      Print the partition table to the screen or to a file. There are several different formats for the partition that you can choose from:


              r      Raw data format (exactly what would be written to disk)

              s      Partition table in sector order format

              t      Partition table in raw format

              The raw data format will print the sectors that would be written to disk if a write command is selected.  First, the primary partition table is printed, followed by the partition tables associated with each logical partition.  The data is printed in hex byte by byte with 16 bytes per line.

              The partition table in sector order format will print the partition table ordered by sector number.  The fields, from left to right, are the number of the partition, the partition type, the first sector, the last sector, the offset from the first sector of the partition to the start of the data, the length of the partition, the filesystem type (with the hex value in parenthesis), and the flags (with the hex value in parenthesis).  In addition to the primary and logical partitions, free and unusable space is printed and the extended partition is printed before the first logical partition.

              If a partition does not start or end on a cylinder boundary or if the partition length is not divisible by the cylinder size, an asterisk (*) is printed after the non-aligned sector number/count.  This usually indicates that a partition was created by an operating system that either does not align partitions to cylinder boundaries or that used different disk geometry information.  If you know the disk geometry of the other operating system, you could enter the geometry information with the change geometry command (g).

              For the first partition on the disk and for all logical partitions, if the offset from the beginning of the partition is not equal to the number of sectors per track (i.e., the data does not start on the first head), a number sign (#) is printed after the offset.  For the remaining partitions, if the offset is not zero, a number sign will be printed after the offset.  This corresponds to the NC flag in the partitions section of the main display.

              The partition table in raw format will print the partition table ordered by partition number.  It will leave out all free and unusable space.  The fields, from left to right, are the number of the partition, the flags (in hex), the starting head, sector and cylinder, the filesystem ID (in hex), the ending head, sector and cylinder, the starting sector in the partition and the number of sectors in the partition.  The information in this table can be directly translated to the raw data format.

              The partition table entries only have 10 bits available to represent the starting and ending cylinders.  Thus, when the absolute starting (ending) sector number is on a cylinder greater than 1023, the maximal values for starting (ending) head, sector and cylinder are printed.  This is the method used by OS/2, and thus fixes the problems associated with OS/2's fdisk rewriting the partition table when it is not in this format.  Since Linux and OS/2 use absolute sector counts, the values in the starting and ending head, sector and cylinder are not used.

       q      Quit program.  This will exit the program without writing any data to disk.

       t      Change the filesystem type.  By default, new partitions are created as Linux partitions, but since cfdisk can create partitions for other operating systems, change partition type allows you to enter the hex value of the filesystem you desire.  A list of the know filesystem types is displayed.  You can type in the filesystem type at the prompt or accept the default filesystem type [Linux].

       u      Change units of the partition size display.  It will rotate through megabytes, sectors and cylinders.

       W      Write partition table to disk (must enter an upper case W).  Since this might destroy data on the disk, you must either confirm or deny the write by entering `yes' or `no'.  If you enter `yes', cfdisk will write the partition table to disk and the tell the kernel to re-read the partition table from the disk.  The re-reading of the partition table does not work in some cases, for example for device-mapper devices.  In particular case you need to inform kernel about new partitions by partprobe(8), kpartx(8) or reboot the system.

       Up Arrow

       Down Arrow
              Move cursor to the previous or next partition.  If there are more partitions than can be displayed on a screen, you can display the next (previous) set of partitions by moving down (up) at the last (first) partition displayed on the screen.

       CTRL-L Redraws the screen.  In case something goes wrong and you cannot read anything, you can refresh the screen from the main command line.

       ?      Print the help screen.

       All of the commands can be entered with either upper or lower case letters (except for Writes).  When in a sub-menu or at a prompt to enter a filename, you can hit the ESC key to return to the main command line.

```
###options
```
       -a     Use an arrow cursor instead of reverse video for highlighting the current partition.

       -g     Do not use the geometry given by the disk driver, but try to guess a geometry from the partition table.

       -v     Print the version number and copyright.

       -z     Start with zeroed partition table.  This option is useful when you want to repartition your entire disk.  Note: this option does not zero the partition table on the disk; rather, it simply starts the program without reading the existing partition table.

       -c cylinders

       -h heads

       -s sectors-per-track
              Override the number of cylinders, heads and sectors per track read from the BIOS.  If your BIOS or adapter does not supply this information or if it supplies incorrect information, use these options to set the disk geometry values.

       -P opt Prints the partition table in specified formats.  opt can be one or more of "r", "s" or "t".  See the print command (above) for more information on the print formats.

```
###exit status
```
       0: No errors; 1: Invocation error; 2: I/O error; 3: cannot get geometry; 4: bad partition table on disk.

```
###see also
```
       fdisk(8), sfdisk(8), mkfs(8), parted(8), partprobe(8), kpartx(8)

```
###bugs
```
       The current version does not support multiple disks.

```
###author
```
       Kevin E. Martin (martin@cs.unc.edu)


```
###availability
```
       The cfdisk command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.



```
