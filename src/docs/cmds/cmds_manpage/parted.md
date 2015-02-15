#parted  



###name
```
       GNU Parted - a partition manipulation program

```
###synopsis
```
       parted [options] [device [command [options...]...]]

```
###description
```
       parted is a disk partitioning and partition resizing program.  It allows you to create, destroy, resize, move and copy ext2, linux-swap, FAT, FAT32, and reiserfs partitions.  It can create, resize, and move Macintosh HFS partitions, as well as detect jfs, ntfs, ufs, and xfs partitions.  It is useful for creating space for new operating systems, reorganising disk usage, and copying data to new hard disks.

       This manual page documents parted briefly.  Complete documentation is distributed with the package in GNU Info format; see near the bottom.

```
###options
```
       -h, --help
              displays a help message

       -l, --list
              lists partition layout on all block devices

       -m, --machine
              displays machine parseable output

       -s, --script
              never prompts for user intervention

       -v, --version
              displays the version

       -a alignment-type, --align alignment-type
              Set alignment for newly created partitions, valid alignment types are:

              none   Use the minimum alignment allowed by the disk type.

              cylinder
                     Align partitions to cylinders.

              minimal
                     Use minimum alignment as given by the disk topology information. This and the opt value will use layout information provided by the disk to align the logical partition table addresses to actual physical blocks on the disks.  The min value is the minimum aligment needed to align the partition properly to physical blocks, which avoids performance degradation.

              optimal
                     Use optimum alignment as given by the disk topology information. This aligns to a multiple of the physical block size in a way that guarantees optimal performance.


```
###commands
```
       [device]
              The block device to be used.  When none is given, parted will use the first block device it finds.

       [command [options]]
              Specifies the command to be executed.  If no command is given, parted will present a command prompt.  Possible commands are:

              check partition
                     Do a simple check on partition.

              cp [source-device] source dest
                     Copy the source partition's filesystem on source-device (or the current device if no other device was specified) to the dest partition on the current device.

              help [command]
                     Print general help, or help on command if specified.

              mkfs partition fs-type
                     Make a filesystem fs-type on partition. fs-type can be one of "fat16", "fat32", "ext2", "linux-swap", or "reiserfs".

              mklabel label-type
                     Create a new disklabel (partition table) of label-type.  label-type should be one of "bsd", "dvh", "gpt", "loop", "mac", "msdos", "pc98", or "sun".

              mkpart part-type [fs-type] start end
                     Make a part-type partition with filesystem fs-type (if specified), beginning at start and ending at end (by default in megabytes).  fs-type can be one of "fat16", "fat32", "ext2", "HFS", "linux-swap", "NTFS", "reiserfs", or "ufs".  part-type should be one of "primary", "logical", or "extended".

              mkpartfs part-type fs-type start end
                     Make a part-type partition with filesystem fs-type beginning at start and ending at end (by default in megabytes).  Using this command is discouraged.  Instead use mkpart to create an empty partition, and then use external tools like mke2fs(8) to create the filesystem.

              move partition start end
                     Move partition so that it begins at start and ends at end.  Note: move never changes the minor number.

              name partition name
                     Set the name of partition to name. This option works only on Mac, PC98, and GPT disklabels. The name can be placed in quotes, if necessary.

              print  Display the partition table.

              quit   Exit from parted.

              rescue start end
                     Rescue a lost partition that was located somewhere between start and end.  If a partition is found, parted will ask if you want to create an entry for it in the partition table.

              resize partition start end
                     Resize the filesystem on partition so that it begins at start and ends at end (by default in megabytes).

              rm partition
                     Delete partition.

              select device
                     Choose device as the current device to edit. device should usually be a Linux hard disk device, but it can be a partition, software raid device, or an LVM logical volume if necessary.

              set partition flag state
                     Change the state of the flag on partition to state.  Supported flags are: "boot", "root", "swap", "hidden", "raid", "lvm", "lba", "legacy_boot" and "palo".  state should be either "on" or "off".

              unit unit
                     Set unit as the unit to use when displaying locations and sizes, and for interpreting those given by the user when not suffixed with an explicit unit.  unit can be one of "s" (sectors), "B" (bytes), "kB", "MB", "GB", "TB", "%" (percentage of device size), "cyl" (cylinders), "chs" (cylinders, heads, sectors), or "compact" (megabytes for input, and a human-friendly form for output).

              version
                     Display version information and a copyright message.

```
###known issues
```
       ext3 filesystem functionality does not currently work.  To manage ext3 type filesystems use tools like resize2fs(8) or mke2fs(8).  Note that the currently supported ext2 filesystem will be deprecated once ext3 support is finalized.  Further note that ext3 support will have limited functionality that is yet to be defined.  Use tools like resize2fs(8) and mke2fs(8) to manage these types of filesystems.

       To manually resize an ext3 filesystem and/or a partition use resize2fs(8), fdisk(8) or similar tools.  For LVM situations, you will need to use the LVM commands to resize the LVM elements.

```
###reporting bugs
```
       Report bugs to <bug-parted@gnu.org>

```
###see also
```
       fdisk(8), mkfs(8), The parted program is fully documented in the info(1) format GNU partitioning software manual which is distributed with the parted-doc Debian package.

```
###author
```
       This manual page was written by Timshel Knoll <timshel@debian.org>, for the Debian GNU/Linux system (but may be used by others).



```
