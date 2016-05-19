template: base_without_toc.html 
#The examples for xargs

```
The examples for xargs


#Count the number of lines in all files
find xargstest/ -name 'file??' | sort | xargs wc -l

#Print the first line of specific files
find xargstest/ -name 'file?B' | sort | xargs head -n1

#Process each file using a custom script
find xargstest/ -name 'file??' | xargs myscript.sh
find xargstest/ -name 'file*' -print0 | xargs -0 myscript.sh

#Delete multiple files from a folder.
#Handling blank space in filenames or path by -print0 -0.
find /var/www/tmp/ -type f | xargs rm -fa
find /var/www/tmp/ -type f -print0 | xargs -0 rm -fa

#Count number of lines in multiple files.
find /opt/ -name "*.log" -print0 | xargs -0 wc -l

#Make a backup of all configuratin files.
find / -name "*.conf" |  xargs tar czf  config.tar.gz

#Use custome delimeter with xargs.
 echo "1,2,3,4,5" | xargs -d, echo

#Show output in sepreate line with xargs.
echo "1,2,3,4,5" | xargs -d, -L 1 echo
# find all file name ending with .pdf and remove them
find -name *.pdf | xargs rm -rf

#if file name contains spaces you shuold use this instead
find -name *.pdf | xargs -I{} rm -rf {}
# problem: my conversations with my friend Ahmed are split up across 
# irc logs across different folders

# want to find: a conversation where we were talking about "apple butter"
find ~/chatlogs -name *ahmed* | xargs grep 'apple butter'

#faster than finding a bunch of filenames, retyping them and cat * | grep apple butter
# find all UTF-8 encoded files
ls | xargs file | grep UTF-8

# find mbox unix-mail files
ls | xargs file | grep "very long lines"

# backup all files under a certain size
ls -l | awk '$5<100000 { print $NF; }' | xargs glacier upload backupfoldername
```
