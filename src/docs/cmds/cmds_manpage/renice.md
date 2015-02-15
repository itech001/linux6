#renice  

###name
```
     renice — alter priority of running processes

```
###synopsis
```
     renice [-n] priority [[-p] pid ...] [[-g] pgrp ...] [[-u] user ...]
     renice -h | -v

```
###description
```
     Renice alters the scheduling priority of one or more running processes.  The following who parameters are interpreted as process ID's, process group ID's, or user names.  Renice'ing a process group causes all processes in the process group to have their scheduling priority altered.  Renice'ing a user causes all processes owned by the user to have their scheduling priority altered.  By default, the processes to be affected are specified by their process ID's.

     Options supported by renice:

     -n, --priority
             The scheduling priority of the process, process group, or user.

     -g, --pgrp
             Force who parameters to be interpreted as process group ID's.

     -u, --user
             Force the who parameters to be interpreted as user names.

     -p, --pid
             Resets the who interpretation to be (the default) process ID's.

     -v, --version
             Print version.

     -h, --help
             Print help.

     For example,

     renice +1 987 -u daemon root -p 32

     would change the priority of process ID's 987 and 32, and all processes owned by users daemon and root.

     Users other than the super-user may only alter the priority of processes they own, and can only monotonically increase their ``nice value'' (for security reasons) within the range 0 to PRIO_MAX (20), unless a nice resource limit is set (Linux 2.6.12 and higher).  The super-user may alter the priority of any process and set the priority to any value in the range PRIO_MIN (-20) to PRIO_MAX.  Useful priorities are: 20 (the affected processes will run only when nothing else in the system wants to), 0 (the ``base'' scheduling priority), anything negative (to make things go very fast).

```
###files
```
     /etc/passwd  to map user names to user ID's

```
###see also
```
     getpriority(2), setpriority(2)

```
###bugs
```
     Non super-users can not increase scheduling priorities of their own processes, even if they were the ones that decreased the priorities in the first place.
     The Linux kernel (at least version 2.0.0) and linux libc (at least version 5.2.18) does not agree entirely on what the specifics of the systemcall interface to set nice values is.  Thus causes renice to report bogus previous nice values.

```
###history
```
     The renice command appeared in 4.0BSD.

```
###availability
```
     The renice command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.

```
