#break  



###name
```
       afs_syscall, break, fattach, fdetach, ftime, getmsg, getpmsg, gtty, isastream, lock, madvise1, mpx, prof, profil, putmsg, putpmsg, security, stty, tuxcall, ulimit, vserver - unimplemented system calls

```
###synopsis
```
       Unimplemented system calls.

```
###description
```
       These system calls are not implemented in the Linux kernel.

```
###return value
```
       These system calls always return -1 and set errno to ENOSYS.

```
###notes
```
       Note that ftime(3), profil(3) and ulimit(3) are implemented as library functions.

       Some system calls, like alloc_hugepages(2), free_hugepages(2), ioperm(2), iopl(2), and vm86(2) exist only on certain architectures.

       Some system calls, like ipc(2), create_module(2), init_module(2), and delete_module(2) exist only when the Linux kernel was built with support for them.

```
###see also
```
       syscalls(2)

```
###colophon
```
       This page is part of release 3.54 of the Linux man-pages project.  A description of the project, and information about reporting bugs, can be found at http://www.kernel.org/doc/man-pages/.



```
