#uptime  



###name
```
       uptime - Tell how long the system has been running.

```
###synopsis
```
       uptime [options]

```
###description
```
       uptime gives a one line display of the following information.  The current time, how long the system has been running, how many users are currently logged on, and the system load averages for the past 1, 5, and 15 minutes.

       This is the same information contained in the header line displayed by w(1).

       System load averages is the average number of processes that are either in a runnable or uninterruptable state.  A process in a runnable state is either using the CPU or waiting to use the CPU.  A process in uninterruptable state is waiting for some I/O access, eg waiting for disk.  The averages are taken over the three time intervals.  Load averages are not normalized for the number of CPUs in a system, so a load average of 1 means a single CPU system is loaded all the time while on a 4 CPU system it means it was idle 75% of the time.

```
###options
```
       -p, --pretty
              show uptime in pretty format

       -h, --help
              display this help text

       -s, --since
              system up since, in yyyy-mm-dd MM:HH:SS format

       -V, --version
              display version information and exit

```
###files
```
       /var/run/utmp
              information about who is currently logged on

       /proc  process information

```
###authors
```
       uptime was written by Larry Greenfield ⟨greenfie@gauss.rutgers.edu⟩ and Michael K. Johnson ⟨johnsonm@sunsite.unc.edu⟩

```
###see also
```
       ps(1), top(1), utmp(5), w(1)

```
###reporting bugs
```
       Please send bug reports to ⟨procps@freelists.org⟩



```
