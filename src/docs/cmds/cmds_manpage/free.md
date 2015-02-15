#free  



###name
```
       free - Display amount of free and used memory in the system

```
###synopsis
```
       free [options]

```
###description
```
       free displays the total amount of free and used physical and swap memory in the system, as well as the buffers used by the kernel.  The shared memory column represents either the MemShared value (2.4 series kernels) or the Shmem value (2.6 series kernels and later) taken from the /proc/meminfo file. The value is zero if none of the entries is exported by the kernel.

```
###options
```
       -b, --bytes
              Display the amount of memory in bytes.

       -k, --kilo
              Display the amount of memory in kilobytes.  This is the default.

       -m, --mega
              Display the amount of memory in megabytes.

       -g, --giga
              Display the amount of memory in gigabytes.

       --tera Display the amount of memory in terabytes.

       -h, --human
              Show all output fields automatically scaled to shortest three digit unit and display the units of print out.  Following units are used.

                B = bytes
                K = kilos
                M = megas
                G = gigas
                T = teras

              If unit is missing, and you have petabyte of RAM or swap, the number is in terabytes and columns might not be aligned with header.

       -c, --count count
              Display the result count times.  Requires the -s option.

       -l, --lohi
              Show detailed low and high memory statistics.

       -o, --old
              Display the output in old format, the only difference being this option will disable the display of the "buffer adjusted" line.

       -s, --seconds seconds
              Continuously display the result delay seconds apart.  You may actually specify any floating point number for delay, usleep(3) is used for microsecond resolution delay times.

       --si   Use power of 1000 not 1024.

       -t, --total
              Display a line showing the column totals.

       --help Print help.

       -V, --version
              Display version information.

```
###files
```
       /proc/meminfo
              memory information

```
###see also
```
       ps(1), slabtop(1), top(1), vmstat(8).

```
###authors
```
       Written by Brian Edmonds.

```
###reporting bugs
```
       Please send bug reports to ⟨procps@freelists.org⟩



```
