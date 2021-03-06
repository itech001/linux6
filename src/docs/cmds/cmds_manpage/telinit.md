#telinit  



###name
```
       telinit - change system runlevel

```
###synopsis
```
       telinit [OPTION]...  RUNLEVEL

```
###description
```
       telinit may be used to change the system runlevel.

       The RUNLEVEL argument should be one of the multi-user runlevels 2-5, 0 to halt the system, 6 to reboot the system or 1 to bring the system down into single-user mode.

       Normally you would use the shutdown(8) tool to halt or reboot the system, or to bring it down to single-user mode.

       RUNLEVEL may also be S or s which will place the system directly into single-user mode without actually stopping processes first, you probably won't want that.

       The runlevel is changed by emitting the runlevel(7) event, which includes the new runlevel in the RUNLEVEL environment variable as well as the previous runlevel (obtained from the environment or from /var/run/utmp) in the PREVLEVEL variable.

       telinit will write the new runlevel to /var/run/utmp and append a new entry to /var/log/wtmp.


   Other commands
       telinit may be also used to send basic commands to the init(8) daemon for compatibility with System V.  These are:

       Q or q to request that init(8) reload its configuration.  This is rarely necessary since Upstart watches its configuration with inotify(7) and is deprecated by the initctl(8) reload-configuration command.

       U or u to request that the init(8) daemon re-execute itself.  This is necessary when upgrading the Upstart init(8) daemon itself or any of its dependent system libraries to ensure disks can be unmounted cleanly on shutdown.

              Note that if the init daemon is not Upstart, this option will have no effect on the running init(8) daemon.

```
###options
```
       -e KEY=VALUE
              This specifies an additional environment variable to be included in the event along with RUNLEVEL and PREVLEVEL.

```
###environment
```
       RUNLEVEL
              telinit will read the current runlevel from this environment variable if set in preference to reading from /var/run/utmp

```
###files
```
       /var/run/utmp
              Where the current runlevel will be read from; this file will also be updated with the new runlevel.

       /var/log/wtmp
              A new runlevel record will be appended to this file for the new runlevel.

```
###notes
```
       The Upstart init(8) daemon does not keep track of runlevels itself, instead they are implemented entirely by its userspace tools.

       See runlevel(7) for more details.

```
###author
```
       Written by Scott James Remnant <scott@netsplit.com>

```
###reporting bugs
```
       Report bugs at <https://launchpad.net/upstart/+bugs>

```
###copyright
```
       Copyright © 2009 Canonical Ltd.
       This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```
###see also
```
       runlevel(7) init(8) initctl(8) shutdown(8) runlevel(8)



```
