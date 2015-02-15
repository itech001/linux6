#shutdown  



###name
```
       shutdown - bring the system down

```
###synopsis
```
       shutdown [OPTION]...  TIME [MESSAGE]

```
###description
```
       shutdown arranges for the system to be brought down in a safe way.  All logged-in users are notified that the system is going down and, within the last five minutes of TIME, new logins are prevented.

       TIME may have different formats, the most common is simply the word 'now' which will bring the system down immediately.  Other valid formats are +m, where m is the number of minutes to wait until shutting down and hh:mm which specifies the time on the 24hr clock.

       If no option is specified, the default action is to bring the system down into single-user mode.

       Once TIME has elapsed, shutdown sends a request to the init(8) daemon to bring the system down into the appropriate runlevel.

       This is performed by emitting the runlevel(7) event, which includes the new runlevel in the RUNLEVEL environment variable as well as the previous runlevel (obtained from the environment or from /var/run/utmp) in the PREVLEVEL variable.  An additional INIT_HALT variable may be set, this will contain the value HALT when bringing the system down for halt and POWEROFF when bringing the system down for power off.

```
###options
```
       -r     Requests that the system be rebooted after it has been brought down.

       -h     Requests that the system be either halted or powered off after it has been brought down, with the choice as to which left up to the system.

       -H     Requests that the system be halted after it has been brought down.

       -P     Requests that the system be powered off after it has been brought down.

       -c     Cancels a running shutdown.  TIME is not specified with this option, the first argument is MESSAGE.

       -k     Only send out the warning messages and disable logins, do not actually bring the system down.

```
###environment
```
       RUNLEVEL
              shutdown will read the current runlevel from this environment variable if set in preference to reading from /var/run/utmp

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
       runlevel(7) init(8) telinit(8) reboot(8)



```
