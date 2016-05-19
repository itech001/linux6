#init  



###name
```
       init - Upstart process management daemon

```
###synopsis
```
       init [OPTION]...

```
###description
```
       init is the parent of all processes on the system, it is executed by the kernel and is responsible for starting all other processes; it is the parent of all processes whose natural parents have died and it is responsible for reaping those when they die.

       Processes managed by init are known as jobs and are defined by files in the /etc/init directory.  See init(5) for more details on configuring Upstart.

   Events
       init(8) is an event-based init daemon.  This means that jobs will be automatically started and stopped by changes that occur to the system state, including as a result of jobs starting and stopping.

       This is different to dependency-based init daemons which start a specified set of goal jobs, and resolve the order in which they should be started and other jobs required by iterating their dependencies.

       For more information on starting and stopping jobs, as well as emitting events that will automatically start and stop jobs, see the manual page for the initctl(8) tool.

       The primary event is the startup(7) event, emitted when the daemon has finished loading its configuration.  Other useful events are the starting(7), started(7), stopping(7) and stopped(7) events emitted as jobs change state.

   Job States
       Table 1: Job Goals and State Transitions.

       ┌───────────────┬──────────────────────────────────────────┐
       │               │                   Goal                   │
       │               ├───────────────┬──────────────────────────┤
       │Current State  │    start      │           stop           │
       ├───────────────┼───────────────┴──────────────────────────┤
       │waiting        │  starting        n/a                     │
       │starting       │  pre-start       stopping                │
       │pre-start      │  spawned         stopping                │
       │spawned        │  post-start      stopping                │
       │post-start     │  running         stopping                │
       │running        │  stopping        pre-stop / stopping (*) │
       │pre-stop       │  running         stopping                │
       │stopping       │  killed          killed                  │
       │killed         │  post-stop       post-stop               │
       │post-stop      │  starting        waiting                 │
       └───────────────┴──────────────────────────────────────────┘
       Key:
         (*) If there is a script or exec section and this process is running,
         state will be 'pre-stop', else it will be 'stopping'.


   Job Lifecycle
       Starting a Job

       1  Initially the job is "at rest" with a goal of 'stop' and a state of 'waiting' (shown as 'stop/waiting' by the initctl(8) list and status commands).

       2  The goal is changed from 'stop' to 'start' indicating the job is attempting to start.

       3  The state is changed from 'waiting' to 'starting'.

       4  The starting(7) event is emitted denoting the job is "about to start".

       5  Any jobs whose 'start on' (or 'stop on') condition would be satisfied by this job starting are started (or stopped respectively).

       6  The starting(7) event completes.

       7  The state is changed from 'starting' to 'pre-start'.

       8  If the pre-start stanza exists, the pre-start process is spawned.

       9  If the pre-start process fails, the goal is changed from 'start' to 'stop', and the stopping(7) and stopped(7) events are emitted with appropriate variables set denoting the error.

       10 Assuming the pre-start did not fail or did not call "stop", the main process is spawned.

       11 The state is changed from 'pre-start' to 'spawned'.

       12 Upstart then ascertains the final PID for the job which may be a descendent of the immediate child process if expect fork or expect daemon has been specified.

       13 The state is changed from 'spawned' to 'post-start'.

       14 If the post-start stanza exists, the post-start process is spawned.

       15 The state is changed from 'post-start' to 'running'.

       16 The started(7) event is emitted.

          For services, when this event completes the main process will now be fully running. If the job refers to a task, it will now have completed (successfully or otherwise).

       17 Any jobs whose 'start on' (or 'stop on') condition would be satisfied by this job being started are started (or stopped respectively).

       Stopping a Job

       1  Assuming the job is fully running, it will have a goal of 'start' and a state of 'running' (shown as 'start/running' by the initctl(8) list and status commands).

       2  The goal is changed from 'start' to 'stop' indicating the job is attempting to stop.

       3  The state is changed from 'running' to 'pre-stop'.

       4  If the pre-stop stanza exists, the pre-stop process is spawned.

       5  The state is changed from 'pre-stop' to 'stopping'.

       6  The stopping(7) event is emitted.

       7  Any jobs whose 'start on' (or 'stop on') condition would be satisfied by this job stopping are started (or stopped respectively).

       8  The main process is stopped:

          i  The signal specified by the kill signal stanza is sent to the process group of the main process (such that all processes belonging to the jobs main process are killed).  By default this signal is SIGTERM.

             See signal(7) and init(5).

          ii Upstart waits for up to "kill timeout" seconds (default 5 seconds) for the process to end.

          iii
             If the process is still running after the timeout, a SIGKILL signal is sent to the process which cannot be ignored and will forcibly stop the processes in the process group.

       9  The state is changed from 'killed' to 'post-stop'.

       10 If the post-stop stanza exists, the post-stop process is spawned.

       11 The state is changed from 'post-stop' to 'waiting'.

       12 The stopped(7) event is emitted.

          When this event completes, the job is fully stopped.

       13 Any jobs whose 'start on' (or 'stop on') condition would be satisfied by this job being stopped are started (or stopped respectively).

   System V compatibility
       The Upstart init(8) daemon does not keep track of runlevels itself, instead they are implemented entirely by its userspace tools.  The event emitted to signify a change of runlevel is the runlevel(7) event.  For more information see its manual page.

```
###options
```
       Options are passed to init(8) by placing them on the kernel command-line.

       --chroot-sessions
              Enable chroot session support. See Chroot Support in init(5).

       --confdir directory
              Read job configuration files from a directory other than the default (/etc/init for process ID 1).

              When running as process ID 1, the last directory specified will be used.

              In user session mode, multiple directories will be honoured and job configuration files loaded from the directories in the order specified.

       --default-console value
              Default value for jobs that do not specify a 'console' stanza. This could be used for example to set the default to 'none' but still honour jobs that specify explicitly 'console log'. See init(5) for all possible values of console.

       --no-dbus
              Do not connect to a D-Bus bus.

       --no-inherit-env
              Stop jobs from inheriting the initial environment. Only meaningful when running in user mode.

       --logdir directory
              Write job output log files to a directory other than /var/log/upstart (system mode) or $XDG_CACHE_HOME/upstart (user session mode).

       --no-log
              Disable logging of job output. Note that jobs specifying 'console log' will be treated as if they had specified 'console none'.  See init(5) for further details.

       --no-sessions
              Disable chroot sessions (default).

       --no-startup-event
              Suppress emission of the initial startup event. This option should only be used for testing since it will stop the init(8) daemon from starting any jobs automatically.

       --session
              Connect to the D-Bus session bus. This should only be used for testing.

       --startup-event event
              Specify a different initial startup event from the standard startup(7).

       --user Starts in user mode, as used for user sessions. Upstart will be run as an unprivileged user, reading configuration files from configuration locations as per roughly XDG Base Directory Specification. See init(5) for further details.

       -q, --quiet
              Reduces output messages to errors only.

       -v, --verbose
              Outputs verbose messages about job state changes and event emissions to the system console or log, useful for debugging boot.

       --version
              Outputs version information and exits.

```
###notes
```
       init is not normally executed by a user process, and expects to have a process id of 1.  If this is not the case, it will actually execute telinit(8) and pass all arguments to that.  See that manual page for further details. However, if the --user option is specified, it will run as a Session Init and read alternative configuration files and manage the individual user session in a similar fashion.

       Sending a Session Init a SIGTERM signal is taken as a request to shutdown due to an impending system shutdown. In this scenario, the Session Init will emit the session-end event and  request all running jobs stop. It will attempt to honour jobs kill timeout values (see init(5) for further details). Note however that system policy will prevail: if jobs request timeout values longer than the system policy allows for complete system shutdown, it will not be possible to honour them before the Session Init is killed by the system.

```
###environment variables
```
       When run as a user process, the following variables may be used to find job configuration files:


       ·   $XDG_CONFIG_HOME

       ·   $XDG_CONFIG_DIRS

       See User Session Mode in init(5) for further details.


```
###files
```
       /etc/init.conf

       /etc/init/

       $HOME/.init/

       $XDG_CONFIG_DIRS/upstart/

       $XDG_CONFIG_HOME/upstart/

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
       Copyright © 2009-2013 Canonical Ltd.
       This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```
###see also
```
       all-swaps(7), control-alt-delete(7), dbus-daemon(1), dbus-event(7), dconf-event(7), file-event(7), filesystem(7), init(5), init(8), initctl(8), keyboard-request(7), local-filesystems(7), mountall(8), mounted(7), mounting(7), power-status-changed(7), remote-filesystems(7), runlevel(7), shutdown(8), socket-event(7), started(7), starting(7), startup(7), stopped(7), stopping(7), telinit(8), upstart-dbus-bridge(8), upstart-dconf-bridge(8), upstart-event-bridge(8), upstart-events(7), upstart-file-bridge(8), upstart-local-bridge(8), upstart-socket-bridge(8), upstart-udev-bridge(8), virtual-filesystems(7).



```
