#zipnote  



###name
```
       zipnote - write the comments in zipfile to stdout, edit comments and rename files in zipfile


```
###synopsis
```
       zipnote [-w] [-b path] [-h] [-v] [-L] zipfile


```
###arguments
```
       zipfile  Zipfile to read comments from or edit.


```
###options
```
       -w     Write comments to a zipfile from stdin (see below).

       -b path
              Use path for the temporary zip file.

       -h     Show a short help.

       -v     Show version information.

       -L     Show software license.


```
###description
```
       zipnote writes the comments in a zipfile to stdout.  This is the default mode.  A second mode allows updating the comments in a zipfile as well as allows changing the names of the files in the zipfile.  These modes are described below.


```
###examples
```
       To write all comments in a zipfile to stdout use for example

            zipnote foo.zip > foo.tmp

       This writes all comments in the zipfile foo.zip to the file foo.tmp in a specific format.


       If desired, this file can then be edited to change the comments and then used to update the zipfile.

            zipnote -w foo.zip < foo.tmp

       The names of the files in the zipfile can also be changed in this way.  This is done by following lines like
            "@ name"
       in the created temporary file (called foo.tmp here) with lines like
            "@=newname"
       and then using the -w option as above.


```
###bugs
```
       The temporary file format is rather specific and zipnote is rather picky about it.  It should be easier to change file names in a script.

       Does not yet support large (> 2 GB) or split archives.


```
###see also
```
       zip(1), unzip(1)

```
###author
```
       Info-ZIP



```
