#logout  



###name
```
       login, logout - write utmp and wtmp entries

```
###synopsis
```
       #include <utmp.h>

       void login(const struct utmp *ut);

       int logout(const char *ut_line);

       Link with -lutil.

```
###description
```
       The utmp file records who is currently using the system.  The wtmp file records all logins and logouts.  See utmp(5).

       The function login() takes the supplied struct utmp, ut, and writes it to both the utmp and the wtmp file.

       The function logout() clears the entry in the utmp file again.

   GNU details
       More precisely, login() takes the argument ut struct, fills the field ut->ut_type (if there is such a field) with the value USER_PROCESS, and fills the field ut->ut_pid (if there is such a field) with the process ID of the calling process.  Then it tries to fill the field ut->ut_line.  It takes the first of stdin, stdout, stderr that is a terminal, and stores the corresponding pathname minus a possible leading /dev/ into this field, and then writes the struct to the utmp file.  On the other hand, if no terminal name was found, this field is filled with "???"  and the struct is not written to the utmp file.  After this, the struct is written to the wtmp file.

       The logout() function searches the utmp file for an entry matching the ut_line argument.  If a record is found, it is updated by zeroing out the ut_name and ut_host fields, updating the ut_tv timestamp field and setting ut_type (if there is such a field) to DEAD_PROCESS.

```
###return value
```
       The logout() function returns 1 if the entry was successfully written to the database, or 0 if an error occurred.

```
###files
```
       /var/run/utmp
              user accounting database, configured through _PATH_UTMP in <paths.h>

       /var/log/wtmp
              user accounting log file, configured through _PATH_WTMP in <paths.h>

```
###conforming to
```
       Not in POSIX.1-2001.  Present on the BSDs.

```
###notes
```
       Note that the member ut_user of struct utmp is called ut_name in BSD.  Therefore, ut_name is defined as an alias for ut_user in <utmp.h>.

```
###see also
```
       getutent(3), utmp(5)

```
###colophon
```
       This page is part of release 3.54 of the Linux man-pages project.  A description of the project, and information about reporting bugs, can be found at http://www.kernel.org/doc/man-pages/.



```
