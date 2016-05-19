#losetup  



###name
```
       losetup - set up and control loop devices

```
###synopsis
```
       Get info:

            losetup loopdev

            losetup -a

            losetup -j file [-o offset]

       Delete loop:

            losetup -d loopdev...

       Print name of first unused loop device:

            losetup -f

       Setup loop device:

            losetup [{-e|-E} encryption] [-o offset] [--sizelimit size]
                    [-p pfd] [-r] {-f[--show]|loopdev} file

       Resize loop device:

            losetup -c loopdev

```
###description
```
       losetup is used to associate loop devices with regular files or block devices, to detach loop devices and to query the status of a loop device. If only the loopdev argument is given, the status of the corresponding loop device is shown.


   Encryption
       It is possible to specify transfer functions (for encryption/decryption or other purposes) using one of the -E and -e options.  There are two mechanisms to specify the desired encryption: by number and by name. If an encryption is specified by number then one has to make sure that the Linux kernel knows about the encryption with that number, probably by patching the kernel. Standard numbers that are always present are 0 (no encryption) and 1 (XOR encryption).  When the cryptoloop module is loaded (or compiled in), it uses number 18.  This cryptoloop module will take the name of an arbitrary encryption type and find the module that knows how to perform that encryption.

```
###options
```
       The size and offset arguments may be followed by binary (2^N) suffixes KiB, MiB, GiB, TiB, PiB and EiB (the "iB" is optional, e.g. "K" has the same meaning as "KiB") or decimal (10^N) suffixes KB, MB, GB, PB and EB.


       -a, --all
              show status of all loop devices

       -c, --set-capacity loopdev
              force loop driver to reread size of the file associated with the specified loop device

       -d, --detach loopdev...
              detach the file or device associated with the specified loop device(s)

       -e, -E, --encryption encryption_type
              enable data encryption with specified name or number

       -f, --find
              find the first unused loop device. If a file argument is present, use this device. Otherwise, print its name

       -h, --help
              print help

       -j, --associated file
              show status of all loop devices associated with given file

       -k, --keybits num
              set the number of bits to use in key to num.

       -N, --nohashpass
              Do not hash the password.  By default, Debian systems run the password through a hash function, non-Debian systems tend not to.

       -o, --offset offset
              the data start is moved offset bytes into the specified file or device

       --sizelimit size
              the data end is set to no more than size bytes after the data start

       -p, --pass-fd num
              read the passphrase from file descriptor with number num instead of from the terminal

       -r, --read-only
              setup read-only loop device

       --show print device name if the -f option and a file argument are present.

              The short form of this option (-s) is deprecated.  This short form could be in collision with Loop-AES implementation where the same option is used for --sizelimit.

       -v, --verbose
              verbose mode


```
###return value
```
       losetup returns 0 on success, nonzero on failure. When losetup displays the status of a loop device, it returns 1 if the device is not configured and 2 if an error occurred which prevented losetup from determining the status of the device.


```
###files
```
       /dev/loop0, /dev/loop1, ...   loop devices (major=7)

```
###example
```
       If you are using the loadable module you must have the module loaded first with the command

              # modprobe loop

       Maybe also encryption modules are needed.

              # modprobe des # modprobe cryptoloop

       The following commands can be used as an example of using the loop device.

              # dd if=/dev/zero of=/file bs=1k count=100
              # losetup -e des /dev/loop0 /file
              Password:
              Init (up to 16 hex digits):
              # mkfs -t ext2 /dev/loop0 100
              # mount -t ext2 /dev/loop0 /mnt
               ...
              # umount /dev/loop0
              # losetup -d /dev/loop0

       If you are using the loadable module you may remove the module with the command

              # rmmod loop

```
###restriction
```
       DES encryption is painfully slow. On the other hand, XOR is terribly weak.  Both are insecure nowadays. Some ciphers may require a licence for you to be allowed to use them.

       Cryptoloop is deprecated in favor of dm-crypt. For more details see cryptsetup(8).

```
###availability
```
       The losetup command is part of the util-linux package and is available from ftp://ftp.kernel.org/pub/linux/utils/util-linux/.



```
