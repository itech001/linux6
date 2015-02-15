#service  
service(8)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      System Manager's Manual                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     service(8)



###name
```
       service - run a System V init script


```
###synopsis
```
       service SCRIPT COMMAND [OPTIONS]

       service --status-all

       service --help | -h | --version


```
###description
```
       service runs a System V init script or upstart job in as predictable an environment as possible, removing most environment variables and with the current working directory set to /.

       The SCRIPT parameter specifies a System V init script, located in /etc/init.d/SCRIPT, or the name of an upstart job in /etc/init. The existence of an upstart job of the same name as a script in /etc/init.d will cause the upstart job to take precedence over the init.d script.  The supported values of COMMAND depend on the invoked script.  service passes COMMAND and OPTIONS to the init script unmodified. For upstart jobs, start, stop, status, are passed through to their upstart equivalents. Restart will call the upstart 'stop' for the job, followed immediately by the 'start', and will exit with the return code of the start command.  All scripts should support at least the start and stop commands.  As a special case, if COMMAND is --full-restart, the script is run twice, first with the stop command, then with the start command. This option has no effect on upstart jobs.

       service --status-all runs all init scripts, in alphabetical order, with the status command. This option only calls status for sysvinit jobs, upstart jobs can be queried in a similar manner with initctl list'.


```
###exit codes
```
       service calls the init script and returns the status returned by it.


```
###files
```
       /etc/init.d
              The directory containing System V init scripts.

       /etc/init
              The directory containing upstart jobs.


```
###environment
```
       LANG, TERM
              The only environment variables passed to the init scripts.


```
###see also
```
       /etc/init.d/skeleton,
       update-rc.d(8),
       init(8),
       invoke-rc.d(8).
       initctl(8).



```
