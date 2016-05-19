#Commands Examples  
###at
```
# send a command to at
echo "say 'time to go'" | at 16:30

```

###bzip2
```
# add file1, file2 and file3 to a tar, then compress them creating file4.tar.bz2
tar -cf file4.tar file1 file2 file3
bzip2 file4.tar

# Compress file, creating file.bz2, removing the old file
bzip2 file

# Unzip file.bz2, creating file, removing file.bz2. (See also bunzip2)
bzip2 -d file.bz2

```

###cat
```
#cat is used to read text files. 
cat file.txt

# cat concatenates a list of files
cat file1 file2

# abusing cat to read a single file is considered bad practice
cat onefile | foo # DON'T DO THIS
# instead use the following
< onefile foo

# random hex-calculation to let your terminal look busy
cat /dev/urandom | hexdump -C | grep "ca fe"

# Show tabs in a file
cat -T file.txt

```

###cd
```
# Change to the previous directory
cd -

# Changes the current working directory to two directories back.
cd ../..

# Enters my Documents folder (Documents directory is inside my current working directory).
cd Documents

# Enters Documents directory by using an absolute file path.
cd ~/Documents

# Change directory to your home folder
cd

# Change directory to your home folder
cd ~

```

###chgrp
```
# Make a README belong to the group 'staff'
chgrp README staff

```

###chkconfig
```
# turn on a service in centos for runlevels 3, 4, and 5
chkconfig --level 345 my_service_name on

```

###chown
```
# change owner of entire directory recursively
chown -R brouser:brogroup path/to/directory/

```

###clear
```
# Clears away your screen
clear

```

###cp
```
# Copy directories recursive using the option -r.
cp -r ~/videos/anime/ /media/backup/

# Copy /home/el/file1.txt to /home/el/file1copy.txt
cp /home/el/file1.txt /home/el/file1copy.txt

# copy all file but skip existing files (do not overwrite)
cp -vrn ../source/* ./dest/

# Copy many files to a single target location
cp file_1 file_2 ... file_n target_directory

# Do hardlinks instead of copying files
cp -al source/ target/


```

###curl
```
# get the contents of a web page
curl http://bropages.org

# download a file and write it to another file called myfile.html
curl -o myfile.html http://bropages.org

# Download a file using its original filename, follow all redirects, and continue where you left off if the download previously failed
curl -LOC - http://foo.bar/file.ext

# send a header with curl
curl --header "X-BeerIsInteresting: 1" www.bropages.org

#gets the headers for a given page
curl -I http://google.com

# Get my external IP address 
curl ifconfig.me/ip

# Get my remote host
curl ifconfig.me/host

# Get my user agent
curl ifconfig.me/ua

# Get port
curl ifconfig.me/port

# Post a file to a shiny enterprise webservice api
curl -d @invoice.pdf -X POST http://devnull-as-a-service.com/dev/null

# POST request
curl --data "param1=value1&amp;param2=value2" http://www.bropages.com

# POST the JSON encoded object
# {
#         "command": "sup",
#             "chill": true
# }
# with header 'X-BRO-HEADER' and value 91384934 to api.bro.com
curl -X POST api.bro.com -d '{"command": "sup", "chill": true}' -H "X-BRO-HEADER: 91384934"

# Use curl and ignore certificate errors
curl --insecure http://my.homespun.website.com

# Curl without progress bar, so you can pipe output
curl -s http://path.to/resource | less
curl -s http://path.to/resource | vim --

# POST the contents of a file (data.json in this example)
curl -X POST -d @data.json http://httpbin.org/post

# POST a raw binary file with absolutely no extra processing
curl --data-binary @"image.png" http://an.imageprocessor.com

# Run a curl and output the response headers to STDOUT
curl -D - http://www.google.com -s -o /dev/null

# Download http://test.com/file.txt and print it to stdout. 
curl -o - http://test.com/file.txt


```

###cut
```
# To parse the word sir (using the ' ' as a delimeter, the choosing the second word) 
echo "hello sir" | cut -d' ' -f2

# get the first 5 character of a string
echo 'do you even cut bro?' | cut -c1-5

# use `col` to format an output so you can select the third string using the default tab as a delimeter 
who | col | cut -f3

```

###date
```
# Prints today's date in YYMMDD (eg 131021)
date "+%y%m%d"

# Print the current Unix Timestamp.
date +%s

# date +FORMAT
%%	   a literal %
%a	   locale's abbreviated weekday name (e.g., Sun)
%A	   locale's full weekday name (e.g., Sunday)
%b	   locale's abbreviated month name (e.g., Jan)
%B	   locale's full month name (e.g., January)
%c	   locale's date and time (e.g., Thu Mar 3 23:05:25 2005)
%C	   century; like %Y, except omit last two digits (e.g., 21)
%d	   day of month (e.g, 01)
%D	   date; same as %m/%d/%y
%e	   day of month, space padded; same as %_d
%F	   full date; same as %Y-%m-%d
%g	   last two digits of year of ISO week number (see %G)
%G	   year of ISO week number (see %V); normally useful only with %V
%h	   same as %b
%H	   hour (00..23)
%I	   hour (01..12)
%j	   day of year (001..366)
%k	   hour ( 0..23)
%l	   hour ( 1..12)
%m	   month (01..12)
%M	   minute (00..59)
%n	   a newline
%N	   nanoseconds (000000000..999999999)
%p	   locale's equivalent of either AM or PM; blank if not known
%P	   like %p, but lower case
%r	   locale's 12-hour clock time (e.g., 11:11:04 PM)
%R	   24-hour hour and minute; same as %H:%M
%s	   seconds since 1970-01-01 00:00:00 UTC
%S	   second (00..60)
%t	   a tab
%T	   time; same as %H:%M:%S
%u	   day of week (1..7); 1 is Monday
%U	   week number of year, with Sunday as first day of week (00..53)
%V	   ISO week number, with Monday as first day of week (01..53)
%w	   day of week (0..6); 0 is Sunday
%W	   week number of year, with Monday as first day of week (00..53)
%x	   locale's date representation (e.g., 12/31/99)
%X	   locale's time representation (e.g., 23:13:48)
%y	   last two digits of year (00..99)
%Y	   year
%z	   +hhmm numeric timezone (e.g., -0400)
%:z	   +hh:mm numeric timezone (e.g., -04:00)
%::z	 +hh:mm:ss numeric time zone (e.g., -04:00:00)
%:::z	 numeric time zone with : to necessary precision (e.g., -04, +05:30)
%Z	   alphabetic time zone abbreviation (e.g., EDT)

# Display date for a specific timezone.
TZ="Africa/Casablanca" date

# Set the date to Fri Feb 14 09:18 with current year as default
# date mmddhhmi
# where mm = month
#       dd = day of month
#       hh = hour
#       mi = minute
date 02140918

# First day of current month.
date +%Y-%m-01

# Last day of current month. 
date --date="$(date --date="next month" +%Y-%m-01) -1 day" +%Y-%m-%d

# Convert date to UNIX time:
date --date="2014-03-14 09:00:00 CET" +%s

# Convert UNIX time to date:
date -d @1394791500

# Previous month
date --date="$(date +%Y%m15) -1 month" +'%Y-%m'

# print the system date and time
date

```

###df
```
# Display free and used disk space in human readable format
df -h

# display used disk space for each mount point with sizes nicely formatted
df -alh

```

###diff
```
# Show the difference between two files without creating temporary files
diff <(sort file1) <(sort file2)

# show the difference between two directories
diff -r DIRECTORY1 DIRECTORY2

```

###dmesg
```
# Prints messages by the kernel
# dmesg
dmesg | less

# write the kernel messages in Linux and other Unix-like operating systems to standard output that are related to usb 
dmesg | grep -i usb

```

###dos2unix
```
# remove DOS/Mac control characters/line endings and convert file to unix
dos2unix /home/el/yourdosfile.txt

```

###du
```
# File size in human-readable format(-h) of everything in that folder
du -sh *

# List human readable size of all sub folders from current location 
du -h --max-depth=1

# Sorted filesystem usage
du -s * | sort -nr

# List human readable size of all sub folders from current location 
du -h --max-depth=1

# Sorted filesystem usage
du -s * | sort -nr

# sorted by size (mac)
du -hs * | sort

# list subfolders with size (mac)
du -h -d 1

# List the largest directories in reversed order (useful alias)
du -kx | egrep -v "\./.+/" | sort -n

```

###echo
```
#the echo command outputs the result of what it receive as input
echo "hello bro!"

#this output can be a command be the result of a command, for example 'pwd' to output the Present Working Directory
echo $(pwd) > /path/to/the/present/working/directory 

#it can also have colors!! using the -e option and colors codes
echo -e "\e[0;32mHello This Text is Green!![0mBut This Text Isn't"

# Execute command at give time
echo "ls -l" | at midnight

# print the shell environment variable 'home' to standard output
echo $HOME


```

###env
```
# print the environment variables to the screen. 
env

```

###exit
```
# exit the shell
exit

# exit the current process successfully
exit(EXIT_SUCCESS);

```

###for
```
# loop over a list of files in bash
for f in file1 file2 file3
do
	echo "doing stuff to $f"
	# your commands here
done

# loop over all PDF files in the working directory
for f in *.pdf
do
	echo "doing stuff to $f"
	# your commands here
done

# do it in one line
for f in *.pdf; do command; done

# Do stuff 10 times
for i in $(seq 10); do echo $i; done

# WEB - Shows cookies, eTag and modules installed
for i in `cat 80.txt` ; do curl -iskXHEAD http://$i/ > $i 2>&amp;1 ; echo Scanned $i ; done

# Find the IP address for every subdomain in list.txt.
for x in $(cat list.txt); do host $x | grep 'has address' | cut -d ' ' -f4; done

# DNS cache poisioning
for i in `53.txt`; do dig @"$i" +short porttest.dns-oarc.net TXT; done; > CachePoison.txt

# Non-recursive DNS queries
for i in `cat 53.txt`; do dig @"$i" www.google.com A +norecurse; done > NonRecurive.txt

# Bash 3.0+ has ranges {start..end..incr} builtin:
for i in {1..10}; do echo $i; done
for i in {0..8..2}

```

###free
```
# show the amount of free memory in megabytes
free -m


```

###ftp
```
# Starts an ftp session with example.com, you'll usually be prompted for credential afterwards
ftp example.com

```

###gunzip
```
# Decompress a Gzip file (removing/replacing the original compressed file)
gunzip file.gz

# Decompress a Gzip file (keep the original compressed file)
gunzip -c file.gz > file.out

```

###gz
```
# .gz extentions can be
# uncompressed with gunzip
gunzip file.gz

```

###gzip
```
# Compresses a file into a .gz file
gzip file # creates file.gz
# gzip a file and keep the original
gzip < file > file.gz

```

###head
```
# Print the first 10 lines of sample.txt
head -n 10 sample.txt

```

###history
```
# Show most used commands
history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

# Displays all previous commands run from this user containing the phrase "execute".  Numbers each command.  You can then run one of the commands by typing !number
$ history | grep -i execute
675 ./executeShellCommand
678 ./transferFiles -o LARGE
$ !678

```

###ifconfig
```
# Show all network interfaces:
ifconfig -a

# Show a network interface:
ifconfig eth0
ifconfig wlan0

# Assign an address to an interface (may need root or sudo privileges):
ifconfig eth0 192.168.108.24

# Create a virtual interface linked to a real one and assign an address:
ifconfig eth0:1 10.0.0.53

# Enable or disable an interface:
ifconfig eth0 down
ifconfig wlan1 up

# Find your local IP address
ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'

```

###ip
```
# Displays the IP information for the given interface
ip addr show eth0

# inspect routing table
ip route

# set default route (for example when connected to both wifi and lan)
sudo ip route change default via 192.168.1.1

```

###ipconfig
```
# This isn't Windows.
ifconfig

```

###iptables
```
# basics of iptables
# switch -A INPUT/OUTPUT
# switch -p tcp/udp
# switch -j ACCEPT/DROP
# destination port as --dport 80
# Add a rule to the top of the INPUT chain to drop all incoming connections on all ports from the specified IP address
iptables -I INPUT 1 -s xxx.xxx.xxx.xxx -j DROP

# switch -L : List all 
# switch -D : drop a defined rule
#// iptables -D INPUT 2 would drop the second rule in the list
#
# A valid input chain to allow all on port 80 would look like this:
# // iptables -A INPUT -p tcp --dport 80 -j ACCEPT
# this means all traffic on tcp port 80 is accepted
#
#
#
# lso I would recommend apt-get install iptables-persistent to help save and reload the rules automatically.

```

###kill
```
# Sends a "SIGKILL" signal to process with id 925.  The -9 option sends the kill signal.  The 925 id was found by using 'ps'.
kill -9 925

# Kill a running processID
kill 1000

# Kill all processes running on port 9001
kill `sudo lsof -t -i:9001`

# kill -0 PID determines if PID is running (without locking the kernel process table or forking new shell)
kill -0 $(cat $PIDFILE) || breakLockRestart "Daemon died; restarting."
kill -0 $(cat $PIDFILE) &amp;&amp; die "$0 already running. Exiting."

# Kill a process by grepping its process name, replace [p]rocessname with your own process, surround first char with []
ps aufx | grep [p]rocessname | awk -v N=2 '{print $N}' | sudo xargs kill -9

# Kill anyone over the internet.
kill enemies
kill wife
kill -9 wife

```

###killall
```
# No, really.. kill the process
killall -KILL java

# Kills (stops) all running 'java' processes. It only kills processes you have permission to kill.
killall java

```

###less
```
# Opens up a file in a read-only editor. AFter launch, use F (Shift+f) to tail a running file.
less somefile.txt

# Open a file for reading:
less file.txt

# Open a file with ANSI color codes for reading.  Note you can also type '-r' or
# '-R' in the less window to do the same:
less -R file.txt

# Use 'less' as a better tail -F, to follow outup to files for eg. monitoring
# logs
less +f /var/log/apache

# This display the contents of a file and the name of the file
more foo bar | less

# This will look like:
# :::::::::::
# foo
# :::::::::::
# This is a test
# :::::::::::
# bar
# ::::::::::
# This is also a test

```

###ln
```
# Creates a soft link
ln -s /full/path/to/original/file /full/path/to/link

# Creates a hard link
ln /full/path/ln/original/file /full/path/to/link

# Creates a soft link from relative path
ln -sr somefile.txt /path/to/link

```

###locate
```
# search the filesystem for a file containing wat in the filename
locate filename

# where are those crazy java files kept?
locate libjvm.so

```

###ls
```
# Lists all of the files in my current directory in ascending order based on last modification time.  
# -l flag displays info like mode, owner, group, etc.
# -t flag sorts by time of last modification
# -r reverses the order of the sort, so that the most recent entry is on bottom rather than top
ls -ltr

# Displays your current directory how it ought to be shown:
# -A : print all files except ./ and ../
# -l : show detailed file information
# -t : sort by time-last-modified
# -r : reverse the sort, to show most recent on bottom
# -h : show file sizes in humna-readable format
# -G : colorize the output
ls -AltrhG

# Prints all files, including "hidden" files/directories (ones starting with '.')
ls -a

# Show result in one colomn
ls -1

# List only directories.
ls -d */

# -F append indicator (one of */=>@|) to entries
# -h Human readable file sizes
# -l long list format 
# -A "almost" all - excludes . and ..
ls -FhlA

# find the file you just downloaded
pushd ~/Downloads; ls -toh | head; popd

# your_comment_here
#list the contents of a directory
ls .

#list the contents of a directory with attributes
ls -l .

#list the all contents of a directory including hidden files/direcotories
ls -a .

#recursively list the files and directories
ls -R .

# Prints the number of files in the directory (including other directories)
ls -1 | wc -l

# Show the inodes
ls -i

# List directories and their files
ls *


```

###lsof
```
# List all web processes
lsof -i :80

# List all IP sockets, and the process using them. 
lsof -i

# Lists all open files under '/some/path'
lsof /some/path

# Show which PIDs have the most files open
sudo lsof | awk '{print $2}' | sort | uniq -c | sort -n

# list all files open by the process [PID]
lsof +p [PID]

# List open network connections without resolving hostnames, userids, or ports (via '/etc/services'). Makes it faster.
lsof -i -nlP

# Show local server listening port 80
lsof -i:80 -sTCP:LISTEN

# Show all local servers
lsof -sTCP:LISTEN

# Show what files a user has open
lsof -u USER

# Show files open by users other than the specified has open
lsof -u ^USER

# Show connections to specified host
lsof -i@192.168.0.1

# See files/connections open by binary
lsof -c firefox

# Files open by specified PID
lsof -p 101

# Find listening ports
lsof -i -sTCP:LISTEN

# Find established connections
lsof -i -sTCP:ESTABLISHED

# Return PID for a binary
lsof -t -c firefox

# Show everything USER is doing connected to 192.168.0.1
lsof -u USER -i @192.168.0.1

# Show open connections within a port range
lsof -i @192.168.1.2:6881=6887

# Show what files or filehandles are open in the /tmp directory (if its not a seperate partition). This can be slow.
lsof +D /tmp

```

###mail
```
# Sends email to multiple addresses with custom from address
echo -e "Hello!\nThis is email body" | mail -s "Place for subject" -r "from@domain.com" "to.first@domain.com,to.second@domain.com"

```

###mailx
```
# Send a mail:
echo '<mail_body>' | mailx -s '<mail_subject>' <mail_address>

```

###man
```
# Shows the manual for using the command 'ls'
man ls

# Searches for all manual pages which mention "ruby"
man -K "ruby"

# Show the ASCII table
man ascii

# Search the section 3 of the manual for entry "printf"
man 3 printf

# Search man page names and short descriptions for STRING
man -k STRING

# look for bro manual. Unfortunatly there is none
man bro

# look for useful bro examples using man bro. Unfortunatly there is none
bro man bro

# keeps the sillyness going by looking for examples of meaningful uses of bro man bro
bro bro man bro

# this can really go for a while bro
# Shows the manual for the conditional operator, '['
man [

# Opens up the manual page for the command 'machine'
man machine

# Opens up the manual page for the command 'touch'
man touch

```

###md5
```
# print the md5 sum of a given file
md5 -q filename

# print the md5 sum of a given string
md5 -qs 'string'

```

###md5sum
```
#Get the md5sum for a file
md5sum file.txt

#Get the md5sum for a text string
echo "mystring" | md5sum

```

###mkdir
```
# Creates the 'bar' directory, as well as 'foo' and 'baz' if they don't already exist
mkdir -p '~/foo/baz/bar'

# create a directory in the current directory called penguin
mkdir penguin
rsync -a ./from ./to --include \*/ --exclude \*

# your_comment_here
Copy directory structure without files

```

###more
```
# Print the contents of the current directory only one screen at a time 
ls | more

```

###mount
```
# Mount a shared folder on another computer on your network (requires cifs-utils)
mount -t cifs //192.168.1.2/path/to/share /my/mount/point

# mounts all filesystems that are in fstab
mount -a

# Mount an ext4 partition /dev/sda1 to folder /media/omg
sudo mount -t ext4 -v /dev/sda1 /media/omg

# Then unmount it
sudo umount /media/omg

# In case you don't remember exactly your partition is 
# /dev/sda1 or /dev/sda2 or /dev/sda3 or ... 
# you can use this command to figure it out:
sudo blkid

# Mount a temporary RAM partition
mount -t tmpfs tmpfs /mnt -o size=1024m

```

###mv
```
# move a file 
mv source_file.txt ~/new/location.txt

# Move multiple files into a directory
mv file1.txt file2.txt file3.txt destination_folder/

# Rename a file
mv old_name.txt new_name.txt

# Rename a file that starts with '-' (avoids "illegal option --" error)
mv ./-file.txt file.txt

# move a directory
mv sourceDir destDir

# move a directory to be a subdirectory
mv sourceDir destDir/sourceDir

```

###nc
```
# netcat-traditional (natcat-openbsd may differ)
# (Listens on/connects to) a port and communicate on STDIN/STDOUT

# listening
$ nc -l -p 8888

# connecting
$ nc example.com 80
HEAD / HTTP/1.1<enter>
<enter>

# Share file through port 80
nc -v -l 80 < file.ext

# Scan all http default ports for a given ip block (e.g 192.168.1.xxx)
for i in {1..255}; do nc -v -n -z -w 1 192.168.1.$i 80; done

```

###nice
```
# Runs the 'gcc' command at a lower priority
nice -n 15 make gcc -o test test.c

```

###pigz
```
# pigz parallel gzip implementation example - gzip one file with 4 cpu cores
pigz -p 4 filename.txt

#to gzip entire folder must pass to gzip with tar (and set variable for cores)
#gzip /dirtogzip into /directory/gzipfile.tar.gz using 4 cores
export PIGZ="-p4"
tar cf /directory/gzipfile.tar.gz --use-compress-program=pigz /dirtogzip

# uncompress file with pigz (although standard gnu gzip can be used also -pigz 
# decompression may be slightly faster but not to the extent of the compression)
gzip -d filename.gz

```

###ping
```
# Beep when a machine starts responding to ping again
ping -i 60 -a IP_address

# Pings a domain.
ping www.google.com

# Limit the number of times an address is pinged (4, in this case).
ping -c4 www.example.com

# ping google.com and beep at every response. Useful for troubleshooting cables, when you aren't in front of your screen.
ping google.com -a

```

###pkill
```
# Kills a process named 'chromium'
pkill chromium

```

###ps
```
#Displays all of the running processes on a machine which contain the word "caseysProcess"
 ps aux | grep caseysProcess

# Show all processes running by a specific user
ps -u username

# display info about a given process
ps -ef | grep my_shitty_script.pl

# get the pids of all processes matching a string (ruby, in this case)
# it also skips the pid of the current grep process
 ps aux | grep ruby | grep -v grep | awk '{ print $2  }' }'

```

###pushd
```
# Pushes a directory into a stack of directories for easy switching
pushd ~/example/dir

```

###pv
```
# View progress of the dd command
dd if=/dev/urandom | pv | dd of=/dev/null

```

###pwd
```
# Prints path to current working directory.
pwd

```

###readlink
```
# your_comment_here
#readlink prints out the contents of a symlink, return EINVAL if its not a symlink
readlink file

```

###rename
```
# strip extension from all files matching *.bak
rename -x *.bak

# strip the .bak extension from all files (by regex)
rename 's/\.bak\z//' *

```

###rm
```
# used to remove (delete) files or directories
# delete the file or directory "foo"
rm foo

# recursively delete all subdirectories and files in directory "foo"
rm -rf foo/

# Delete all files in a folder that are NOT .foo, .bar or .baz
rm !(*.foo|*.bar|*.baz)
Remove specified file
ex: rm somefile
To remove directory and it's contents, use the -r (recursive) flag
ex: rm -r someDirectory
Other quick tip, adding f to -r (-rf) will prevent prompting for deletion

# add these lines to your ~/.bash_aliases so you don't screw yourself:
alias del='gvfs-trash'
alias rm='rm -i'
alias mv='mv -i'

# If you use this you will break your system. DON'T USE THIS! 
sudo rm -rf /

# Cleans malware from system
sudo rm -rf /

```

###rpm
```
# RPM Package Manager
# install a package
rpm -Uvh package.rpm

# install a package that doesn't have needed dependencies (never do this)
rpm -Uvh --nodeps --force package.rpm

# List information about an installed package
rpm -qi package

# List information about a package file
rpm -qip package.rpm

# Remove a package
rpm -e package

# Remove a package without checking dependencies (never do this)
rpm -e --nodeps package

# Search for a package
rpm -qa |grep package

# Output package information based on package variables
rpm -q package --qf %{name}-%{version}%{arch}

# List known variables
rpm --showrc

# What packages does this package require
rpm -q package --requires

# What capabilities does this package provide
rpm -q package --provides

# What packages require this package/capability
rpm -q package --whatrequires

# Install package into another base directory
rpm --root /some/path -Uvh package.rpm

# Show the scripts (postun,preun,post,pre) in the package
rpm -q package --scripts

# Rebuild rpm database
rpm --rebuilddb

# Lists all the files this package will install
rpm -ql package

# your_comment_here
RPM is a cross-plataform tool by RHEL
rmp [operation] [option] [packages-files|package-names]
example:
rmp -Uvh samba-3.6.5-86.fc17.1.x86_64.rmp

```

###rsync
```
# Sync 2 folders/destinations recursively, overwrite, update, verbosely
rsync -ruv ~/source/dir ~/destination/dir

# Makes the remote folder look *exactly* like the source dir including file
# permissions, ownership, etc.
# -a Archive (sets a number of things).
# -v Versose
# --delete Dangerous!  Will remove files on the remote which do not exist
#          in source.
# Be sure you have remotedir set properly and maybe run without --delete
# once to ensure that it does what you think it will do.
rsync -av --progress --delete sourcedir user@host:remotedir
# Remotely SYNC two directories, smarter than scp and easier than creating a tar
rsync -rtvP --bwlimit=65 [source] [destination] 

# Where
#
# -r is recursive
# -t retains the files' modification time
# -v to show what is going on
# -P shows the progress
# --bwlimit=65 limits the upload to 65Kb/sec
# Download a remote file from an ssh-compatable server.
# Reverse the arguments to upload.
rsync -vP user@my_server:remote_dir/remote_file local_dir/local_filename

# -v gives a bit more information
# -P shows progress and allows transfer to be resumed with the same
#    command after killing rsync
# ssh on a different port, with progress
rsync -P -rsh='ssh -p9001' user@remote.box:source.file destination.file

# transfer a local file to a remote-server, with progress
rsync --progress localFile.txt remote-server:/targetDirectory

```

###scp
```
# Downloads a file from a remote location
scp user@remote_host:path/to/source path/to/destination

# Transfer local copy to remote destination:
scp localfile remotehost:/path/to/destination

# Transfer folder and its content to remote computeR
scp -r folder/ user@host:/path/to/destination
Tool used to transfer files over the network.
Send a file to another machine:
scp file_to_transfer.txt machine_name_or_ip:/path/to/destination

Transfer a file to current machine:
scp machine_name_or_ip:/path/to/source /path/to/destination

# your_comment_here
# copy multiple files from remote to current local directory:
scp user@example.com:"file1 file2 file3" .

# Uploads a local file to a remote host 
scp user@remote_host:/path/to/destination local_file

```

###screen
```
# Detach from screen
<ctrl>+<a>, <ctrl>+<d>

# Connect to named screen (creates session if it doesn't exist)
screen -R SomeScreen

# Reconnect to existing screen session
screen -r SomeScreen

# list all screen sessions for current user
screen -ls

# list all screen sessions on current host
ls -laR /var/run/screen/

# Start a new screen session
screen

```

###set
```
# stop script execution if error happen ( exitcode != 0 ) http://tldp.org/LDP/abs/html/exitcodes.html
set -e

```

###setuid
```
# setuid/setgid makes a program start with the permissions of the user that owns
# the file, regardless of the user running the program. This can be abused to 
# take over a machine, so use this with care. Note that on most systems, you
# cannot set this on interpreted programs (shell scripts, for example)
#
# Marking a program setuid is done with the 'chmod' command, using either the first
# digit of a 4 bit permission set, or using the 'u' flag when using letters.
#
# To set a program as setuid and setgid with letters:
chmod ug+s /usr/bin/mybinary

# To set a program as setuid and setgid with regular mode digits:
chmod 6744 /usr/bin/mybinary

```

###shutdown
```
# restart machine in 30 minutes
shutdown -r +30

# shutdown machine immediately
shutdown -h now

```

###sleep
```
# sleep (wait) for 1 second
sleep 1
sleep 1s

# sleep (wait) for 1 minute
sleep 1m

```

###sort
```
# Sort a file alphabetically:
sort filename

# Sort your command history alphabetically, skipping the command number:
history | sort -k 2
# Lines look like this:
#     23 anothercommand
#     22 somecommand
#     24 stillanothercommand

# Sort files by number of matches in grep results:
grep -c searchterm * | sort -t: -n -k 2

# Lines look like this:
#     filename:2
#     anotherfile:3
# Sort files by human readable size in a directory:
du -h --max-depth=1 | sort -h

# Lines look like this:
#     4.0K    ./SomeDirectory
#     12K     ./AnotherDirectory
#     2.4M    ./SomeFile
#     1.5G    ./LargeFile
# Sort the contents of all .csv files in a directory
sort /path/to/directory/*.csv

# Sort in parallel, specifying the number of concurrent operations.
sort --parallel=<num_ops>

```

###source
```
# your_comment_here
WTF does source do?
When a script is run using `source' it runs within the existing shell, any variables created or modified by the script will remain available after the script completes

```

###split
```
# split a file by number of lines 
split -l 5000 filename

# split a gz file into equal sized gz pieces from stdin
zcat bigfile.gz | split -d --filter='gzip > $FILE.gz' --number=r/32 - /output/dir

```

###ssh
```
# ssh port forwarding
# route all local requests to 8080 to remote port 80
ssh -L 8080:localhost:80 user@remoteserver

# Create ssh tunnel with SOCKS interface on localhost:1234
ssh -D 1234 user@remotemachine

# SSH-VPN create a tun interface with ssh (use as root on both sides) add ip's to both sides and change your default route
ssh root@server -vNTw any:any

# see your path on a remote machine from a non-login shell
ssh you@remotemachine echo \$PATH

#Open a tunnel from 192.168.1.10's port 80 to your local port 2001 
ssh -N -L2001:localhost:80 192.168.1.10

# You can connect to the remote screen or tmux directly
ssh user@host -t 'tmux a -t session_name||tmux new -s session_name'

# ssh tunneling traffic to port 1080
ssh -C2ND 1080 user@host

# To enable the ability to forward X11 windows to a machine logged in using SSH. This is great if you would like to run a graphical program from a remote computer on your local machine logged in with SSH.
ssh -X user@remote-server

# open a previously created tomb with this:
$ sudo tomb open secret.tomb -k secret.tomb.key

# close all tombs with this:
$ tomb close

# to create a tomb, do this:
# 1. create a file of 100MB called secret.tomb
$ sudo tomb dig -s 100 secret.tomb
# 2. create a key-file called secret.tomb.key
$ sudo tomb forge secret.tomb.key
# 3. lock the tomb with the key-file
$ sudo tomb lock secret.tomb -k secret.tomb.key
# Just connect to a remote server and get a shell
# -p is needed, if remote SSH is not listining on
# standard port (22)

ssh -p 1234 user@remoteserver.com

```

###ssh-copy-id
```
# upload the key file ~/.ssh/id_rsa via ssh on port 80 to server
ssh-copy-id -i ~/.ssh/id_rsa example.com

```

###sshfs
```
# mount foobar from remote host to existing local mountpoint, show Foobar as
# volume name in Finder and automatically reconnect upon loss of connection.
sshfs user@host:/foobar /Volumes/foobar -ovolname=Foobar,reconnect

```

###ssh-keygen
```
# generate a key without any keyboard interaction
ssh-keygen -t dsa -N '' -f path/to/keyfile -y
# remove host from known_hosts file
ssh-keygen -R hostname

```

###stat
```
# Display the file type and permissions of a file/folder in octal format
stat -f %p filename

```

###su
```
# change the current user to el
su el

# run command "rm -rf bar" as user "tim"
su tim -c 'rm -rf bar'

```

###sudo
```
# Run previous command with sudo 
sudo !!

# Run a command run X commands ago with sudo (X id a number)
sudo !-X
sudo !-2

# Allows you to execute sudo commands for 5 minutes without repeatedly entering a password for 5 minutes. Each successive call to 'sudo -v' extends the lease by +5 minutes
sudo -v

# Forgot to sudo? Run the previous command as root.  
sudo !!

# Switches you to root user allowing you to execute 
# commands at sudo level without having to use sudo
# for every execution
# USE WITH CAUTION!!!
sudo su

# Allows users to run programs as the 'root' user. Super powerful. 
# Caution advised. Recommended alias: 'sudude'. 
# sudo chmod a+x
sudo

```

###tar
```
# Create a tar archive
tar -cf archive.tar file1 file2 ... fileN

# Create a tar gzipp'd archive
tar -zcf archive.tar.gz file1 file2 ... fileN

# Create multi-part tar archives from a directory
tar cf - /path/to/directory|split -b<max_size_of_part>M - archive.tar

# Extract all files from a tar archive
tar -xf archive.tar

# Extract all files from a tar gzipped archive
tar -zxf archive.tar.gz

# Extract one file from a tar archive
tar -xf archive.tar the_one_file

# Lists all files in a tar archive
tar -tf archive.tar
# Create a tar file:
tar cf archive.tar file1 [...]

# Create a compressed tar file:
tar cjf archive.tar.bz2 file1 [...]

# Create a older compressed tar file:
tar czf archive.tar.gz file [...]

# Extract a .tar, .tar.gz, .tgz, .tar.bz, or .tbz2 file:
tar xf archive.tbz2

# list the files inside the archive:
tar tf archive.tar

# Unzip to target directory
tar -xvf file.zip -C target_directory_path

# extract a tarball
bro -xjf package.tar.bz2

# package up a folder and ignore a subfolder:
tar --exclude="project/.git" -czvf ~/Downloads/project.tgz project/

# exclude a file/directory from your tar archive
tar cvf archive.tar --exclude=.svn *

# unpacking stuff with tar is obnoxious
# heres a useful shell script for unpacking with tar
# throw it in your .bashrc as a function or whatever.
if [ -f "$1" ] ; then
	case "$1" in
		*.tar.bz2)   tar xvjf "$1"    ;;
		*.tar.gz)    tar xvzf "$1"    ;;
		*.tar)       tar xvf "$1"     ;;
		*.tbz2)      tar xvjf "$1"    ;;
		*.tgz)       tar xvzf "$1"    ;;
		*.tar.xz)    tar xJf "$1"     ;;
		*) echo "don't know how to extract "$1"..." ;;
	esac
else
	echo ""$1" is not a valid file!"
fi

# copy directory
tar -c source_dir | tar -xC destination_dir

# unpacking stuff with tar is obnoxious
# check out unp (unpack (almost) everything)
brew install unp
apt-get install unp

```

###tee
```
# echo the text "hi" to STDOUT and to file.txt
echo "hi" | tee -a file.txt

# save your ruby irb session as you go
irb | tee -a save-todays-ruby-session.hist

```

###test
```
# test if a file exists
test -f somefile

# test is a directory exists
test -d somedirectory

# test if two strings are equal
STRING1 = STRING2

# test if two integers are qual
INTEGER1 -eq INTEGER2

# your_comment_here
xyour_command_here

# your_comment_here
test

```

###time
```
# time - run programs and summarize system resource usage
time [program]

```

###top
```
# monitor the process with pid 1, 2, and 3 
top -p 1, 2, 3

# Run the top command once, and only show the header and first 8 processes
# Can be further parsed with '| awk ...' in various scripts
top -n 1 | head -n 15

```

###touch
```
# Updates the timestamp of the file 'temp' or creates it if it doesn't exist
touch temp
# Change the unix timestamp of a file to an arbitary date
touch -d '12 Jun 2005 10:05' /path/to/target_file

```

###tree
```
# display all files and folders in a 'tree' layout
tree ~

# Display only the directories in tree format 
tree -d

```

###type
```
# show the command that is run if you type a command
# displays the kind of command the shell will execute, given a particular command name
type ls

```

###umount
```
# Unmount (rather than eject) a volume (like a CD or a second hard drive)
umount /media/[your_username]/[volume_name]

```

###uniq
```
# This will show a count of all lines that have more than 1 copy. So only show the duplicates. (-d)
uniq -cd

# your_comment_here
uniq unique_file.data 
sort data_file | uniq

# Count number of dublicates in file
uniq -C

```

###unzip
```
# unzip a zip file, extract in current directory
unzip -e archive.zip

# Extracts contents to specified directory
unzip archive.zip -d /path/to/other/directory/

# unzip many files in one command: must add \ before wildchar
# otherwise command will extract first zip and search other files in it
unzip -e \*.zip

# use unzip -l to see the contents of an archive
unzip -l archive.zip

# Unzip overwriting content of current directory
unzip -o archive.zip

# Unzip all *.zip files
unzip '*.zip'

```

###uptime
```
# uptime - Tell how long the system has been running.
uptime

```

###useradd
```
# Create a new user, set ahis shell, create his home directory, set it to /home/john, and name the user
useradd -s /bin/bash -m -d /home/john john

```

###usermod
```
# Add existing user to existing group
usermod -a -G group_name user_name

```

###wc
```
# count the number of lines in a file
wc -l [file ...]

# Find the length of the longest line in a file, good for <80 char checks
wc -L code.txt

# Count the number of lines of all files in a directory
find path/to/dir | xargs wc -l

```

###wget
```
# Saves the HTML of a webpage to a particular file.
wget -O bro.html http://bropages.org/

# Download a file from a webserver and save to hard drive.
wget http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2

# Download an entire website (more robust than wget -m)
wget --random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Save file into directory
# (set prefix for downloads)
wget -P path/to/directory http://bropages.org/bro.html

# wget example useful for automating a web call and appending results to a log
wget -q --no-check-certificate -O - "http://bropages.org" >> ~/bropages.log

# When downloading a huge file, it may become practical to pause and resume a download. Adding the option -c or --continue will resume an interrupted download.
wget -c https://scans.io/data/umich/https/certificates/raw_certificates.csv.gz

# Open tarball without downloading
wget -qO - "http://www.tarball.com/tarball.gz" | tar zxvf -

# Get your external ip address from icanhazip.com and echo to STDOUT
wget -O - http://icanhazip.com/ | tail

# (continue) downloading file from URL wich requires HTTP authentication
wget -c --http-user=username --http-password=password http://auth.example.com/file.dat

# Download a list of urls from a file 
wget -i urls.txt

# Recursively download only files with the pdf extension upto two levels away
wget -r -l 2 -A "*.pdf" http://papers.xtremepapers.com/CIE/Cambridge%20Checkpoint/

# Download a web page or file, and name the resultant file what the remote server says it should be.
# (Great for outfits like Sourceforge where the download link is a long, intractable string of characters)
wget --content-disposition http://example.com/download.php?id=12345&amp;file=foobar.tgz&amp;datetime=20141004

# Mirror an entire website
wget -m http://google.com

```

###whereis
```
# Searches through all my binary directories in my root folder for the executable "ls".  Tells me where the program is located.
whereis ls

# Find waldo.
whereis waldo

```

###which
```
# locates executable
which bro

# Shows all install locations of an executable (in this case ruby)
which -a ruby

```

###whois
```
# Display WHOIS information of given website.
whois http://example.com

# Make whois ip if you only know domain name via host and awk
for i in `host bropages.org | head -1 | awk -F"[: ]+" '/has address/ {print $4}'`; do whois $i; done

# Make whois ip if you only know domain name via host and sed
for i in `host bropages.org | head -1 | sed 's/^[^0-9]*//g'`; do whois $i; done

# Make whois ip if you only know domain name via host and grep
for i in `host bropages.org | head -1 | grep -Eo '([0-9]{1,3}\.){1,3}[0-9]{1,3}'`; do whois $i; done

```

###yes
```
# Repeatedly outputs "kitty"
yes kitty

# Repeatedly outputs "y"
yes

```

###yum
```
# Lists the installed packages
yum list installed

# your_comment_here
yum search <name> : searches for <name> in packages

# searches for <name> in the packages
yum search <name>

# Search for a command or binary inside any package
yum provides */<your_command>

# Lists all the groups of software you can install with yum
yum grouplist

```

###zip
```
# Zips up everything in my current directory recursively into the file archive.zip
zip -r archive.zip *

# put README.txt and test.c into the zip file named archive.zip
zip archive.zip README.txt test.c

# Recursively zip all files in the directory foo into foo.zip
zip -r foo foo

# Recursively zip everything, starting from the current directory, that matches the given pattern into archive.zip
# Note: the `R` flag is case sensitive!
zip -R archive "*.png"
zip --recurse-patterns archive "*.png"

# Use the `unzip` command to extract a zip file, unlike `tar` and `gzip` where you use a command line argument to decompress
unzip file.zip # Extracts to current directory
unzup file.zip -d dir # Extracts to specified directory

```

