#findsmb  



###name
```
       findsmb - list info about machines that respond to SMB name queries on a subnet

```
###synopsis
```
       findsmb [subnet broadcast address]

```
###description
```
       This perl script is part of the samba(7) suite.

       findsmb is a perl script that prints out several pieces of information about machines on a subnet that respond to SMB name query requests. It uses nmblookup(1) and smbclient(1) to obtain this information.

```
###options
```
       -r
           Controls whether findsmb takes bugs in Windows95 into account when trying to find a Netbios name registered of the remote machine. This option is disabled by default because it is specific to Windows 95 and Windows 95 machines only. If set, nmblookup(1) will be called with -B option.

       subnet broadcast address
           Without this option, findsmb will probe the subnet of the machine where findsmb(1) is run. This value is passed to nmblookup(1) as part of the -B option.

```
###examples
```
       The output of findsmb lists the following information for all machines that respond to the initial nmblookup for any name: IP address, NetBIOS name, Workgroup name, operating system, and SMB server version.

       There will be a '+' in front of the workgroup name for machines that are local master browsers for that workgroup. There will be an '*' in front of the workgroup name for machines that are the domain master browser for that workgroup. Machines that are running Windows for Workgroups, Windows 95 or Windows 98 will not show any information about the operating system or server version.

       The command with -r option must be run on a system without nmbd(8) running. If nmbd is running on the system, you will only get the IP address and the DNS name of the machine. To get proper responses from Windows 95 and Windows 98 machines, the command must be run as root and with -r option on a machine without nmbd running.

       For example, running findsmb without -r option set would yield output similar to the following

           IP ADDR         NETBIOS NAME   WORKGROUP/OS/VERSION
           ---------------------------------------------------------------------
           192.168.35.10   MINESET-TEST1  [DMVENGR]
           192.168.35.55   LINUXBOX      *[MYGROUP] [Unix] [Samba 2.0.6]
           192.168.35.56   HERBNT2        [HERB-NT]
           192.168.35.63   GANDALF        [MVENGR] [Unix] [Samba 2.0.5a for IRIX]
           192.168.35.65   SAUNA          [WORKGROUP] [Unix] [Samba 1.9.18p10]
           192.168.35.71   FROGSTAR       [ENGR] [Unix] [Samba 2.0.0 for IRIX]
           192.168.35.78   HERBDHCP1     +[HERB]
           192.168.35.88   SCNT2         +[MVENGR] [Windows NT 4.0] [NT LAN Manager 4.0]
           192.168.35.93   FROGSTAR-PC    [MVENGR] [Windows 5.0] [Windows 2000 LAN Manager]
           192.168.35.97   HERBNT1       *[HERB-NT] [Windows NT 4.0] [NT LAN Manager 4.0]

```
###version
```
       This man page is correct for version 3 of the Samba suite.

```
###see also
```
       nmbd(8), smbclient(1), and nmblookup(1)

```
###author
```
       The original Samba software and related utilities were created by Andrew Tridgell. Samba is now developed by the Samba Team as an Open Source project similar to the way the Linux kernel is developed.

       The original Samba man pages were written by Karl Auer. The man page sources were converted to YODL format (another excellent piece of Open Source software, available at ftp://ftp.icce.rug.nl/pub/unix/) and updated for the Samba 2.0 release by Jeremy Allison. The conversion to DocBook for Samba 2.2 was done by Gerald Carter. The conversion to DocBook XML 4.2 for Samba 3.0 was done by Alexander Bokovoy.



```
