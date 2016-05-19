#halt  



###name
```
       reboot, halt, poweroff - reboot or stop the system

```
###synopsis
```
       reboot [OPTION]...  [REBOOTCOMMAND]

       halt [OPTION]...

       poweroff [OPTION]...

```
###description
```
       These programs allow a system administrator to reboot, halt or poweroff the system.

       When called with --force or when in runlevel 0 or 6, this tool invokes the reboot(2) system call itself (with REBOOTCOMMAND argument passed) and directly reboots the system.  Otherwise this simply invokes the shutdown(8) tool with the appropriate arguments without passing REBOOTCOMMAND argument.

       Before invoking reboot(2), a shutdown time record is first written to /var/log/wtmp

```
###options
```
       -f, --force
              Does not invoke shutdown(8) and instead performs the actual action you would expect from the name.

       -p, --poweroff
              Instructs the halt command to instead behave as poweroff.

       -w, --wtmp-only
              Does not call shutdown(8) or the reboot(2) system call and instead only writes the shutdown record to /var/log/wtmp

       --verbose
              Outputs slightly more verbose messages when rebooting, useful for debugging problems with shutdown.

```
###environment
```
       RUNLEVEL
              reboot will read the current runlevel from this environment variable if set in preference to reading from /var/run/utmp

```
###files
```
       /var/run/utmp
              Where the current runlevel will be read from; this file will also be updated with the runlevel record being replaced by a shutdown time record.

       /var/log/wtmp
              A new runlevel record for the shutdown time will be appended to this file.

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
       shutdown(8) telinit(8) runlevel(8)



```
