#delgroup  



###name
```
       deluser, delgroup - remove a user or group from the system

```
###synopsis
```
       deluser [options] [--force] [--remove-home] [--remove-all-files] [--backup] [--backup-to DIR] user

       deluser --group [options] group
       delgroup [options] [--only-if-empty] group

       deluser [options] user group

   COMMON OPTIONS
       [--quiet] [--system] [--help] [--version] [--conf FILE]

```
###description
```
       deluser and delgroup remove users and groups from the system according to command line options and configuration information in /etc/deluser.conf and /etc/adduser.conf.  They are friendlier front ends to the userdel and groupdel programs, removing the home directory as option or even all files on the system owned by the user to be removed, running a custom script, and other features.  deluser and delgroup can be run in one of three modes:

   Remove a normal user
       If called with one non-option argument and without the --group option, deluser will remove a normal user.

       By default, deluser will remove the user without removing the home directory, the mail spool  or any other files on the system owned by the user. Removing the home directory and mail spool can be achieved using the --remove-home option.

       The --remove-all-files option removes all files on the system owned by the user. Note that if you activate both options --remove-home will have no effect because all files including the home directory and mail spool are already covered by the --remove-all-files option.

       If you want to backup all files before deleting them you can activate the --backup option which will create a file username.tar(.gz|.bz2) in the directory specified by the --backup-to option (defaulting to the current working directory). Both the remove and backup options can also be activated for default in the configuration file /etc/deluser.conf. See deluser.conf(5) for details.

       If you want to remove the root account (uid 0), then use the --force parameter; this may prevent to remove the root user by accident.

       If the file /usr/local/sbin/deluser.local exists, it will be executed after the user account has been removed in order to do any local cleanup. The arguments passed to deluser.local are:
       username uid gid home-directory


   Remove a group
       If deluser is called with the --group option, or delgroup is called, a group will be removed.

       Warning: The primary group of an existing user cannot be removed.

       If the option --only-if-empty is given, the group won't be removed if it has any members left.


   Remove a user from a specific group
       If called with two non-option arguments, deluser will remove a user from a specific group.

```
###options
```
       --conf FILE
              Use FILE instead of the default files /etc/deluser.conf and /etc/adduser.conf

       --group
              Remove a group. This is the default action if the program is invoked as delgroup.

       --help Display brief instructions.

       --quiet
              Suppress progress messages.

       --system
              Only delete if user/group is a system user/group. This avoids accidentally deleting non-system users/groups. Additionally, if the user does not exist, no error value is returned. This option is mainly for use in Debian package maintainer scripts.

       --backup
              Backup all files contained in the userhome and the mailspool-file to a file named /$user.tar.bz2 or /$user.tar.gz.

       --backup-to
              Place the backup files not in / but in the directory specified by this parameter. This implicitly sets --backup also.

       --remove-home
              Remove the home directory of the user and its mailspool. If --backup is specified, the files are deleted after having performed the backup.

       --remove-all-files
              Remove all files from the system owned by this user. Note: --remove-home does not have an effect any more. If --backup is specified, the files are deleted after having performed the backup.

       --version
              Display version and copyright information.

```
###return value
```
       0      The action was successfully executed.

       1      The user to delete was not a system account. No action was performed.

       2      There is no such user. No action was performed.

       3      There is no such group. No action was performed.

       4      Internal error. No action was performed.

       5      The group to delete is not empty. No action was performed.

       6      The user does not belong to the specified group. No action was performed.

       7      You cannot remove a user from its primary group. No action was performed.

       8      The required perl-package 'perl modules' is not installed. This package is required to perform the requested actions. No action was performed.

       9      For removing the root account the parameter "--force" is required. No action was performed.


```
###files
```
       /etc/deluser.conf

```
###see also
```
       deluser.conf(5), adduser(8), userdel(8), groupdel(8)


```
###copyright
```
       Copyright (C) 2000 Roland Bauerschmidt. Modifications (C) 2004 Marc Haber and Joerg Hoh.  This manpage and the deluser program are based on adduser which is:
       Copyright (C) 1997, 1998, 1999 Guy Maor.
       Copyright (C) 1995 Ted Hajek, with a great deal borrowed from the original Debian adduser
       Copyright (C) 1994 Ian Murdock.  deluser is free software; see the GNU General Public Licence version 2 or later for copying conditions.  There is no warranty.



```
