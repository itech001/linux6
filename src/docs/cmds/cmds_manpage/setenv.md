#setenv  



###name
```
       setenv - change or add an environment variable

```
###synopsis
```
       #include <stdlib.h>

       int setenv(const char *name, const char *value, int overwrite);

       int unsetenv(const char *name);

   Feature Test Macro Requirements for glibc (see feature_test_macros(7)):

       setenv(), unsetenv():
           _BSD_SOURCE || _POSIX_C_SOURCE >= 200112L || _XOPEN_SOURCE >= 600

```
###description
```
       The setenv() function adds the variable name to the environment with the value value, if name does not already exist.  If name does exist in the environment, then its value is changed to value if overwrite is nonzero; if overwrite is zero, then the value of name is not changed.  This function makes copies of the strings pointed to by name and value (by contrast with putenv(3)).

       The unsetenv() function deletes the variable name from the environment.  If name does not exist in the environment, then the function succeeds, and the environment is unchanged.

```
###return value
```
       The setenv() function returns zero on success, or -1 on error, with errno set to indicate the cause of the error.

       The unsetenv() function returns zero on success, or -1 on error, with errno set to indicate the cause of the error.

```
###errors
```
       EINVAL name is NULL, points to a string of length 0, or contains an '=' character.

       ENOMEM Insufficient memory to add a new variable to the environment.

```
###conforming to
```
       4.3BSD, POSIX.1-2001.

```
###notes
```
       POSIX.1-2001 does not require setenv() or unsetenv() to be reentrant.

       Prior to glibc 2.2.2, unsetenv() was prototyped as returning void; more recent glibc versions follow the POSIX.1-2001-compliant prototype shown in the SYNOPSIS.

```
###bugs
```
       POSIX.1-2001 specifies that if name contains an '=' character, then setenv() should fail with the error EINVAL; however, versions of glibc before 2.3.4 allowed an '=' sign in name.

```
###see also
```
       clearenv(3), getenv(3), putenv(3), environ(7)

```
###colophon
```
       This page is part of release 3.54 of the Linux man-pages project.  A description of the project, and information about reporting bugs, can be found at http://www.kernel.org/doc/man-pages/.



```
