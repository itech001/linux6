#swapoff  



###name
```
       swapon, swapoff - enable/disable devices and files for paging and swapping

```
###synopsis
```
       Get info:
            swapon -s [-h] [-V]

       Enable/disable:
            swapon [-d] [-f] [-p priority] [-v] specialfile...
            swapoff [-v] specialfile...

       Enable/disable all:
            swapon -a [-e] [-f] [-v]
            swapoff -a [-v]

```
###description
```
       swapon is used to specify devices on which paging and swapping are to take place.

       The device or file used is given by the specialfile parameter. It may be of the form -L label or -U uuid to indicate a device by label or uuid.

       Calls to swapon normally occur in the system boot scripts making all swap devices available, so that the paging and swapping activity is interleaved across several devices and files.

       swapoff disables swapping on the specified devices and files.  When the -a flag is given, swapping is disabled on all known swap devices and files (as found in /proc/swaps or /etc/fstab).


       -a, --all
              All devices marked as ``swap'' in /etc/fstab are made available, except for those with the ``noauto'' option.  Devices that are already being used as swap are silently skipped.

       -d, --discard
              Discard freed swap pages before they are reused, if the swap device supports the discard or trim operation.  This may improve performance on some Solid State Devices, but often it does not.  The /etc/fstab mount option discard may be also used to enable discard flag.

       -e, --ifexists
              Silently skip devices that do not exist.  The /etc/fstab mount option nofail may be also used to skip non-existing device.


       -f, --fixpgsz
              Reinitialize (exec /sbin/mkswap) the swap space if its page size does not match that of the the current running kernel.  mkswap(2) initializes the whole device and does not check for bad blocks.

       -h, --help
              Provide help.

       -L label
              Use the partition that has the specified label.  (For this, access to /proc/partitions is needed.)

       -p, --priority priority
              Specify the priority of the swap device.  priority is a value between 0 and 32767. Higher numbers indicate higher priority. See swapon(2) for a full description of swap priorities. Add pri=value to the option field of /etc/fstab for use with swapon -a.

       -s, --summary
              Display swap usage summary by device. Equivalent to "cat /proc/swaps".  Not available before Linux 2.1.25.

       -U uuid
              Use the partition that has the specified uuid.

       -v, --verbose
              Be verbose.

       -V, --version
              Display version.

```
###notes
```
       You should not use swapon on a file with holes.  Swap over NFS may not work.

       swapon automatically detects and rewrites swap space signature with old software suspend data (e.g S1SUSPEND, S2SUSPEND, ...). The problem is that if we don't do it, then we get data corruption the next time an attempt at unsuspending is made.

       swapon may not work correctly when using a swap file with some versions of btrfs.  This is due to the swap file implementation in the kernel expecting to be able to write to the file directly, without the assistance of the file system.  Since btrfs is a copy-on-write file system, the file location may not be static and corruption can result. Btrfs actively disallows the use of files on its file systems by refusing to map the file. This can be seen in the system log as "swapon: swapfile has holes." One possible workaround is to map the file to a loopback device. This will allow the file system to determine the mapping properly but may come with a performance impact.


```
###see also
```
       swapon(2), swapoff(2), fstab(5), init(8), mkswap(8), rc(8), mount(8)

```
###files
```
       /dev/sd??  standard paging devices
       /etc/fstab ascii filesystem description table

```
###history
```
       The swapon command appeared in 4.0BSD.

```
###availability
```
       The swapon command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.



```
