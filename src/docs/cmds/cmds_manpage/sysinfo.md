#sysinfo  



###name
```
       sysinfo - returns information on overall system statistics

```
###synopsis
```
       #include <sys/sysinfo.h>

       int sysinfo(struct sysinfo *info);

```
###description
```
       Until Linux 2.3.16, sysinfo() used to return information in the following structure:

           struct sysinfo {
               long uptime;             /* Seconds since boot */
               unsigned long loads[3];  /* 1, 5, and 15 minute load averages */
               unsigned long totalram;  /* Total usable main memory size */
               unsigned long freeram;   /* Available memory size */
               unsigned long sharedram; /* Amount of shared memory */
               unsigned long bufferram; /* Memory used by buffers */
               unsigned long totalswap; /* Total swap space size */
               unsigned long freeswap;  /* swap space still available */
               unsigned short procs;    /* Number of current processes */
               char _f[22];             /* Pads structure to 64 bytes */
           };

       and the sizes were given in bytes.

       Since Linux 2.3.23 (i386), 2.3.48 (all architectures) the structure is:

           struct sysinfo {
               long uptime;             /* Seconds since boot */
               unsigned long loads[3];  /* 1, 5, and 15 minute load averages */
               unsigned long totalram;  /* Total usable main memory size */
               unsigned long freeram;   /* Available memory size */
               unsigned long sharedram; /* Amount of shared memory */
               unsigned long bufferram; /* Memory used by buffers */
               unsigned long totalswap; /* Total swap space size */
               unsigned long freeswap;  /* swap space still available */
               unsigned short procs;    /* Number of current processes */
               unsigned long totalhigh; /* Total high memory size */
               unsigned long freehigh;  /* Available high memory size */
               unsigned int mem_unit;   /* Memory unit size in bytes */
               char _f[20-2*sizeof(long)-sizeof(int)]; /* Padding to 64 bytes */
           };

       and the sizes are given as multiples of mem_unit bytes.

       sysinfo() provides a simple way of getting overall system statistics.  This is more portable than reading /dev/kmem.

```
###return value
```
       On success, zero is returned.  On error, -1 is returned, and errno is set appropriately.

```
###errors
```
       EFAULT pointer to struct sysinfo is invalid

```
###conforming to
```
       This function is Linux-specific, and should not be used in programs intended to be portable.

       The Linux kernel has a sysinfo() system call since 0.98.pl6.  Linux libc contains a sysinfo() routine since 5.3.5, and glibc has one since 1.90.

```
###see also
```
       proc(5)

```
###colophon
```
       This page is part of release 3.54 of the Linux man-pages project.  A description of the project, and information about reporting bugs, can be found at http://www.kernel.org/doc/man-pages/.



```
