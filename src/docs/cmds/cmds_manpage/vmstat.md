#vmstat  



###name
```
       vmstat - Report virtual memory statistics

```
###synopsis
```
       vmstat [options] [delay [count]]

```
###description
```
       vmstat reports information about processes, memory, paging, block IO, traps, disks and cpu activity.

       The first report produced gives averages since the last reboot.  Additional reports give information on a sampling period of length delay.  The process and memory reports are instantaneous in either case.

```
###options
```
       delay  The delay between updates in seconds.  If no delay is specified, only one report is printed with the average values since boot.

       count  Number of updates.  In absence of count, when delay is defined, default is infinite.

       -a, --active
              Display active and  inactive memory, given a 2.5.41 kernel or better.

       -f, --forks
              The -f switch displays the number of forks since boot.  This includes the fork, vfork, and clone system calls, and is equivalent to the total number of tasks created.  Each process is represented by one or more tasks, depending on thread usage.  This display does not repeat.

       -m, --slabs
              Displays slabinfo.

       -n, --one-header
              Display the header only once rather than periodically.

       -s, --stats
              Displays a table of various event counters and memory statistics.  This display does not repeat.

       -d, --disk
              Report disk statistics (2.5.70 or above required).

       -D, --disk-sum
              Report some summary statistics about disk activity.

       -p, --partition device
              Detailed statistics about partition (2.5.70 or above required).

       -S, --unit character
              Switches outputs between 1000 (k), 1024 (K), 1000000 (m), or 1048576 (M) bytes.  Note this does not change the swap (si/so) or block (bi/bo) fields.

       -w, --wide
              Wide output mode (useful for systems with higher amount of memory, where the default output mode suffers from unwanted column breakage).  The output is wider than 80 characters per line.

       -V, --version
              Display version information and exit.

       -h, --help
              Display help and exit.

```
###field description for vm mode
```
   Procs
       r: The number of runnable processes (running or waiting for run time).
       b: The number of processes in uninterruptible sleep.

   Memory
       swpd: the amount of virtual memory used.
       free: the amount of idle memory.
       buff: the amount of memory used as buffers.
       cache: the amount of memory used as cache.
       inact: the amount of inactive memory.  (-a option)
       active: the amount of active memory.  (-a option)

   Swap
       si: Amount of memory swapped in from disk (/s).
       so: Amount of memory swapped to disk (/s).

   IO
       bi: Blocks received from a block device (blocks/s).
       bo: Blocks sent to a block device (blocks/s).

   System
       in: The number of interrupts per second, including the clock.
       cs: The number of context switches per second.

   CPU
       These are percentages of total CPU time.
       us: Time spent running non-kernel code.  (user time, including nice time)
       sy: Time spent running kernel code.  (system time)
       id: Time spent idle.  Prior to Linux 2.5.41, this includes IO-wait time.
       wa: Time spent waiting for IO.  Prior to Linux 2.5.41, included in idle.
       st: Time stolen from a virtual machine.  Prior to Linux 2.6.11, unknown.

```
###field description for disk mode
```
   Reads
       total: Total reads completed successfully
       merged: grouped reads (resulting in one I/O)
       sectors: Sectors read successfully
       ms: milliseconds spent reading

   Writes
       total: Total writes completed successfully
       merged: grouped writes (resulting in one I/O)
       sectors: Sectors written successfully
       ms: milliseconds spent writing

   IO
       cur: I/O in progress
       s: seconds spent for I/O

```
###field description for disk partition mode
```
       reads: Total number of reads issued to this partition
       read sectors: Total read sectors for partition
       writes : Total number of writes issued to this partition
       requested writes: Total number of write requests made for partition

```
###field description for slab mode
```
       cache: Cache name
       num: Number of currently active objects
       total: Total number of available objects
       size: Size of each object
       pages: Number of pages with at least one active object

```
###notes
```
       vmstat does not require special permissions.

       These reports are intended to help identify system bottlenecks.  Linux vmstat does not count itself as a running process.

       All linux blocks are currently 1024 bytes.  Old kernels may report blocks as 512 bytes, 2048 bytes, or 4096 bytes.

       Since procps 3.1.9, vmstat lets you choose units (k, K, m, M).  Default is K (1024 bytes) in the default mode.

       vmstat uses slabinfo 1.1

```
###files
```
       /proc/meminfo
       /proc/stat
       /proc/*/stat

```
###see also
```
       free(1), iostat(1), mpstat(1), ps(1), sar(1), top(1)

```
###bugs
```
       Does not tabulate the block io per device or count the number of system calls.

```
###authors
```
       Written by Henry Ware ⟨al172@yfn.ysu.edu⟩.
       Fabian Frédérick ⟨ffrederick@users.sourceforge.net⟩ (diskstat, slab, partitions...)

```
###reporting bugs
```
       Please send bug reports to ⟨procps@freelists.org⟩



```
