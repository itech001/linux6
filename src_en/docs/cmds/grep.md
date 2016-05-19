template: base_without_toc.html 
#The examples for grep

```
The examples for grep

#search for a string in one or more files
----------------------------------------
grep 'fred' /etc/passwd              # search for lines containing 'fred' in /etc/passwd
grep fred /etc/passwd                # quotes usually not when you don't use regex patterns
grep null *.scala                    # search multiple files

#case-insensitive
----------------
grep -i joe users.txt                # find joe, Joe, JOe, JOE, etc.

#regular expressions
-------------------
grep '^fred' /etc/passwd             # find 'fred', but only at the start of a line
grep '[FG]oo' *                      # find Foo or Goo in all files in the current dir
grep '[0-9][0-9][0-9]' *             # find all lines in all files in the current dir with three numbers in a row

#display matching filenames, not lines
-------------------------------------
grep -l StartInterval *.plist        # show all filenames containing the string 'StartInterval'
grep -il StartInterval *.plist       # same thing, case-insensitive

#show matching line numbers
--------------------------
grep -n we gettysburg-address.txt    # show line numbers as well as the matching lines

#lines before and after grep match
---------------------------------
grep -B5 "the living" gettysburg-address.txt        # show all matches, and five lines before each match
grep -A10 "the living" gettysburg-address.txt       # show all matches, and ten lines after each match
grep -B5 -A5 "the living" gettysburg-address.txt    # five lines before and ten lines after

#reverse the meaning
-------------------
grep -v fred /etc/passwd             # find any line *not* containing 'fred'
grep -vi fred /etc/passwd            # same thing, case-insensitive

#grep in a pipeline
------------------
ps auxwww | grep httpd               # all processes containing 'httpd'
ps auxwww | grep -i java             # all processes containing 'java', ignoring case
ls -al | grep '^d'                   # list all dirs in the current dir

#search for multiple patterns
----------------------------
egrep 'apple|banana|orange' *                                                         # search for multiple patterns, all files in current dir
egrep -i 'apple|banana|orange' *                                                      # same thing, case-insensitive
egrep 'score|nation|liberty|equal' gettysburg-address.txt                             # all lines matching multiple patterns
locate -i calendar | grep Users | egrep -vi 'twiki|gif|shtml|drupal-7|java|PNG'       # oh yeah
       (see http://alvinalexander.com/linux-unix/linux-egrep-multiple-regular-expres...)

#multiple search strings, multiple filename patterns
---------------------------------------------------
grep -li "jtable" $(find . -name "*.java,v" -exec grep -li "prevayl" {} \;)           # find all files named "*.java,v" containing both
                                                                                      # 'prevayl' and 'jtable'

#grep + find
-----------
find . -type f -exec grep -il 'foo' {} \;     # print all filenames of files under current dir containing 'foo', case-insensitive

#recursive grep search
---------------------
grep -rl 'null' .                             # very similar to the previous find command; does a recursive search
grep -ril 'null' /home/al/sarah /var/www      # search multiple dirs
egrep -ril 'aja|alvin' .                      # multiple patterns, recursive
      (see http://alvinalexander.com/linux-unix/recursive-grep-r-searching-egrep-find)

#grep gzip files
---------------
zgrep foo myfile.gz                           # all lines containing the pattern 'foo'
zgrep 'GET /blog' access_log.gz               # all lines containing 'GET /blog'
zgrep 'GET /blog' access_log.gz | more        # same thing, case-insensitive
```
