#umask  



###name
```
       umask - set file mode creation mask

```
###synopsis
```
       #include <sys/types.h>
       #include <sys/stat.h>

       mode_t umask(mode_t mask);

```
###description
```
       umask() sets the calling process's file mode creation mask (umask) to mask & 0777 (i.e., only the file permission bits of mask are used), and returns the previous value of the mask.

       The umask is used by open(2), mkdir(2), and other system calls that create files to modify the permissions placed on newly created files or directories.  Specifically, permissions in the umask are turned off from the mode argument to open(2) and mkdir(2).

       The constants that should be used to specify mask are described under stat(2).

       The typical default value for the process umask is S_IWGRP | S_IWOTH (octal 022).  In the usual case where the mode argument to open(2) is specified as:

           S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH

       (octal 0666) when creating a new file, the permissions on the resulting file will be:

           S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH

       (because 0666 & ~022 = 0644; i.e., rw-r--r--).

```
###return value
```
       This system call always succeeds and the previous value of the mask is returned.

```
###conforming to
```
       SVr4, 4.3BSD, POSIX.1-2001.

```
###notes
```
       A child process created via fork(2) inherits its parent's umask.  The umask is left unchanged by execve(2).

       The umask setting also affects the permissions assigned to POSIX IPC objects (mq_open(3), sem_open(3), shm_open(3)), FIFOs (mkfifo(3)), and UNIX domain sockets (unix(7)) created by the process.  The umask does not affect the permissions assigned to System V IPC objects created by the process (using msgget(2), semget(2), shmget(2)).

```
###see also
```
       chmod(2), mkdir(2), open(2), stat(2), acl(5)

```
###colophon
```
       This page is part of release 3.54 of the Linux man-pages project.  A description of the project, and information about reporting bugs, can be found at http://www.kernel.org/doc/man-pages/.



```
