#chown  



###name
```
       chown - change file owner and group

```
###synopsis
```
       chown [OPTION]... [OWNER][:[GROUP]] FILE...
       chown [OPTION]... --reference=RFILE FILE...

```
###description
```
       This manual page documents the GNU version of chown.  chown changes the user and/or group ownership of each given file.  If only an owner (a user name or numeric user ID) is given, that user is made the owner of each given file, and the files' group is not changed.  If the owner is followed by a colon and a group name (or numeric group ID), with no spaces between them, the group ownership of the files is changed as well.  If a colon but no group name follows the user name, that user is made the owner of the files and the group of the files is changed to that user's login group.  If the colon and group are given, but the owner is omitted, only the group of the files is changed; in this case, chown performs the same function as chgrp.  If only a colon is given, or if the entire operand is empty, neither the owner nor the group is changed.

```
###options
```
       Change the owner and/or group of each FILE to OWNER and/or GROUP.  With --reference, change the owner and group of each FILE to those of RFILE.

       -c, --changes
              like verbose but report only when a change is made

       -f, --silent, --quiet
              suppress most error messages

       -v, --verbose
              output a diagnostic for every file processed

       --dereference
              affect the referent of each symbolic link (this is the default), rather than the symbolic link itself

       -h, --no-dereference
              affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)

       --from=CURRENT_OWNER:CURRENT_GROUP
              change the owner and/or group of each file only if its current owner and/or group match those specified here.  Either may be omitted, in which case a match is not required for the omitted attribute

       --no-preserve-root
              do not treat '/' specially (the default)

       --preserve-root
              fail to operate recursively on '/'

       --reference=RFILE
              use RFILE's owner and group rather than specifying OWNER:GROUP values

       -R, --recursive
              operate on files and directories recursively

       The following options modify how a hierarchy is traversed when the -R option is also specified.  If more than one is specified, only the final one takes effect.

       -H     if a command line argument is a symbolic link to a directory, traverse it

       -L     traverse every symbolic link to a directory encountered

       -P     do not traverse any symbolic links (default)

       --help display this help and exit

       --version
              output version information and exit

       Owner is unchanged if missing.  Group is unchanged if missing, but changed to login group if implied by a ':' following a symbolic OWNER.  OWNER and GROUP may be numeric as well as symbolic.

```
###examples
```
       chown root /u
              Change the owner of /u to "root".

       chown root:staff /u
              Likewise, but also change its group to "staff".

       chown -hR root /u
              Change the owner of /u and subfiles to "root".

```
###author
```
       Written by David MacKenzie and Jim Meyering.

```
###reporting bugs
```
       Report chown bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report chown translation bugs to <http://translationproject.org/team/>

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       chown(2)

       The full documentation for chown is maintained as a Texinfo manual.  If the info and chown programs are properly installed at your site, the command

              info coreutils 'chown invocation'

       should give you access to the complete manual.



```
