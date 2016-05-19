#vipw  



###name
```
       vipw, vigr - edit the password, group, shadow-password or shadow-group file

```
###synopsis
```
       vipw [options]

       vigr [options]

```
###description
```
       The vipw and vigr commands edits the files /etc/passwd and /etc/group, respectively. With the -s flag, they will edit the shadow versions of those files, /etc/shadow and /etc/gshadow, respectively. The programs will set the appropriate locks to prevent file corruption. When looking for an editor, the programs will first try the environment variable $VISUAL, then the environment variable $EDITOR, and finally the default editor, vi(1).

```
###options
```
       The options which apply to the vipw and vigr commands are:

       -g, --group
           Edit group database.

       -h, --help
           Display help message and exit.

       -p, --passwd
           Edit passwd database.

       -q, --quiet
           Quiet mode.

       -R, --root CHROOT_DIR
           Apply changes in the CHROOT_DIR directory and use the configuration files from the CHROOT_DIR directory.

       -s, --shadow
           Edit shadow or gshadow database.

```
###environment
```
       VISUAL
           Editor to be used.

       EDITOR
           Editor to be used if VISUAL is not set.

```
###files
```
       /etc/group
           Group account information.

       /etc/gshadow
           Secure group account information.

       /etc/passwd
           User account information.

       /etc/shadow
           Secure user account information.

```
###see also
```
       vi(1), group(5), gshadow(5) , passwd(5), , shadow(5).



```
