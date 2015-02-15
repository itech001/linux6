template: base_without_toc.html 
#The examples for find

```
The examples for find

# Executes a command on the files and folders matching a given pattern, in this case, output the last lines of each .foo file in the current folder and subfolders. 
find . -name "*.foo" -exec tail {} \;

# Outputs all the file names/paths that start with the name "Casey".  Searches recursively starting from my current directory (.)
# Throws out any error output by sending it to /dev/null 
find . -name "Casey*" 2>/dev/null

# Finds all files in and under the current directory that contain 'foo' in their name, ignore case
find . -iname '*foo*'

# directory -> chmod 700
# file executable -> chmod 700
# file -> chmod 600
# You can apply this to directory that needs more secure permission
# recursively. Like `~/.ssh`. `+` means run at once, not one by one. Like `xargs`.
find .private -type d -execdir chmod 700 '{}' + \
-or -type f -executable -execdir chmod 777 '{}' + \
-or -type f -execdir chmod 600 '{}' +

# Find all files in home directory that does not match my user/group.
# Then change owner:group to my user/group.
find ~/ \( -not -group $(id -g) -or -not -user $USER \) -execdir chown $USER: '{}' +

# Especially useful for finding and removing temporary files.
# e.g. To remove compiled python files:
find . -name '*.pyc' -exec rm -rf {} \;

# Find and remove empty directories
find . -type d -empty -delete

# Find and remove empty files
find . -type f -empty -delete

# Searches through my user's "home" directory recursively for the file "hashClass.java", throwing out error output along the way.  
# Passes the output to grep for case insensitive search.
find ~/ 2>/dev/null | grep -i "hashclass.java"

# Find all subdirectories that have been created in the last 5 days.
find . -type d -ctime -5

# find last modified file in current directory recursively except directory
find ./ -not -type d -printf "%T+ %p\n" | sort | tail -1

# Find broken symlinks
find -L . -type l

# Find files that were modified less than 4 days ago and more than two days. Notice that `find -ctime +3 -ctime -4` would give no results.
find -ctime +2 -ctime -4

# Find files modified within a specific date range.
touch --date "2007-01-01" /tmp/start
touch --date "2008-01-01" /tmp/end
find /data/images -type f -newer /tmp/start -not -newer /tmp/end


#basic 'find file' commands
--------------------------
find / -name foo.txt -type f -print             # full command
find / -name foo.txt -type f                    # -print isn't necessary
find / -name foo.txt                            # don't have to specify "type==file"
find . -name foo.txt                            # search under the current dir
find . -name "foo.*"                            # wildcard
find . -name "*.txt"                            # wildcard
find /users/al -name Cookbook -type d           # search '/users/al'

#search multiple dirs
--------------------
find /opt /usr /var -name foo.scala -type f     # search multiple dirs

#case-insensitive searching
--------------------------
find . -iname foo                               # find foo, Foo, FOo, FOO, etc.
find . -iname foo -type d                       # same thing, but only dirs
find . -iname foo -type f                       # same thing, but only files

#find files with different extensions
------------------------------------
find . -type f \( -name "*.c" -o -name "*.sh" \)                       # *.c and *.sh files
find . -type f \( -name "*cache" -o -name "*xml" -o -name "*html" \)   # three patterns

#find files that don't match a pattern (-not)
--------------------------------------------
find . -type f -not -name "*.html"                                # find all files not ending in ".html"

#find files by text in the file (find + grep)
--------------------------------------------
find . -type f -name "*.java" -exec grep -l StringBuffer {} \;    # find StringBuffer in all *.java files
find . -type f -name "*.java" -exec grep -il string {} \;         # ignore case with -i option
find . -type f -name "*.gz" -exec zgrep 'GET /foo' {} \;          # search for a string in gzip'd files

#5 lines before, 10 lines after grep matches
-------------------------------------------
find . -type f -name "*.scala" -exec grep -B5 -A10 'null' {} \;
     (see http://alvinalexander.com/linux-unix/find-grep-print-lines-before-after-...)

#find files and act on them (find + exec)
----------------------------------------
find /usr/local -name "*.html" -type f -exec chmod 644 {} \;      # change html files to mode 644
find htdocs cgi-bin -name "*.cgi" -type f -exec chmod 755 {} \;   # change cgi files to mode 755
find . -name "*.pl" -exec ls -ld {} \;                            # run ls command on files found

#find and copy
-------------
find . -type f -name "*.mp3" -exec cp {} /tmp/MusicFiles \;       # cp *.mp3 files to /tmp/MusicFiles

#copy one file to many dirs
--------------------------
find dir1 dir2 dir3 dir4 -type d -exec cp header.shtml {} \;      # copy the file header.shtml to those dirs

#find and delete
---------------
find . -type f -name "Foo*" -exec rm {} \;                        # remove all "Foo*" files under current dir
find . -type d -name CVS -exec rm -r {} \;                        # remove all subdirectories named "CVS" under current dir

#find files by modification time
-------------------------------
find . -mtime 1               # 24 hours
find . -mtime -7              # last 7 days
find . -mtime -7 -type f      # just files
find . -mtime -7 -type d      # just dirs

#find files by modification time using a temp file
-------------------------------------------------
touch 09301330 poop           # 1) create a temp file with a specific timestamp
find . -mnewer poop           # 2) returns a list of new files
rm poop                       # 3) rm the temp file

#find with time: this works on mac os x
--------------------------------------
find / -newerct '1 minute ago' -print

#find and tar
------------
find . -type f -name "*.java" | xargs tar cvf myfile.tar
find . -type f -name "*.java" | xargs tar rvf myfile.tar
     (see http://alvinalexander.com/blog/post/linux-unix/using-find-xargs-tar-crea...
     for more information)

#find, tar, and xargs
--------------------
find . -name -type f '*.mp3' -mtime -180 -print0 | xargs -0 tar rvf music.tar
     (-print0 helps handle spaces in filenames)
     (see http://alvinalexander.com/mac-os-x/mac-backup-filename-directories-space...)

#find and pax (instead of xargs and tar)
---------------------------------------
find . -type f -name "*html" | xargs tar cvf jw-htmlfiles.tar -
find . -type f -name "*html" | pax -w -f jw-htmlfiles.tar
     (see http://alvinalexander.com/blog/post/linux-unix/using-pax-instead-of-tar)
```
