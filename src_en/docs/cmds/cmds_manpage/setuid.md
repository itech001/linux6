#setuid  
SETUID(2)                            Linux Programmer's Manual                            SETUID(2)



###name
```
       setuid - set user identity

```
###synopsis
```
       #include <sys/types.h>
       #include <unistd.h>

       int setuid(uid_t uid);

```
###description
```
       setuid()  sets  the  effective  user ID of the calling process.  If the effective UID of the
       caller is root, the real UID and saved set-user-ID are also set.

       Under Linux, setuid() is implemented like the POSIX version with the  _POSIX_SAVED_IDS  fea‐
       ture.   This  allows  a set-user-ID (other than root) program to drop all of its user privi‐
       leges, do some un-privileged work, and then reengage the original effective  user  ID  in  a
       secure manner.

       If  the  user  is  root or the program is set-user-ID-root, special care must be taken.  The
       setuid() function checks the effective user ID of the caller and if it is the superuser, all
       process-related user ID's are set to uid.  After this has occurred, it is impossible for the
       program to regain root privileges.

       Thus, a set-user-ID-root program wishing to temporarily drop  root  privileges,  assume  the
       identity  of  an  unprivileged  user,  and  then regain root privileges afterward cannot use
       setuid().  You can accomplish this with seteuid(2).

```
###return value
```
       On success, zero is returned.  On error, -1 is returned, and errno is set appropriately.

```
###errors
```
       EAGAIN The uid does not match the current uid and uid brings process over  its  RLIMIT_NPROC
              resource limit.

       EPERM  The  user  is not privileged (Linux: does not have the CAP_SETUID capability) and uid
              does not match the real UID or saved set-user-ID of the calling process.

```
###conforming to
```
       SVr4, POSIX.1-2001.  Not quite compatible with the 4.4BSD call, which sets all of the  real,
       saved, and effective user IDs.

```
###notes
```
       Linux  has  the  concept of the filesystem user ID, normally equal to the effective user ID.
       The setuid() call also sets the filesystem user ID of the calling process.  See setfsuid(2).

       If uid is different from the old effective UID, the process will be forbidden  from  leaving
       core dumps.

       The original Linux setuid() system call supported only 16-bit user IDs.  Subsequently, Linux
       2.4 added setuid32() supporting 32-bit IDs.  The glibc setuid() wrapper  function  transpar‐
       ently deals with the variation across kernel versions.

```
###see also
```
       getuid(2), seteuid(2), setfsuid(2), setreuid(2), capabilities(7), credentials(7)

```
###colophon
```
       This  page  is  part  of  release 3.65 of the Linux man-pages project.  A description of the
       project,    and    information    about    reporting    bugs,    can     be     found     at
       http://www.kernel.org/doc/man-pages/.



Linux                                        2010-11-22                                   SETUID(2)
```
```
