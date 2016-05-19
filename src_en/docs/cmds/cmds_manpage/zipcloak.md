#zipcloak  



###name
```
       zipcloak - encrypt entries in a zipfile


```
###synopsis
```
       zipcloak [-d] [-b path] [-h] [-v] [-L] zipfile


```
###arguments
```
       zipfile  Zipfile to encrypt entries in


```
###options
```
       -b path
       --temp-path path
              Use the directory given by path for the temporary zip file.


       -d
       --decrypt
              Decrypt encrypted entries (copy if given wrong password).


       -h
       --help
              Show a short help.


       -L
       --license
              Show software license.


       -O path
       --output-file zipfile
              Write output to new archive zipfile, leaving original archive as is.


       -q
       --quiet
              Quiet operation.  Suppresses some informational messages.


       -v
       --version
              Show version information.


```
###description
```
       zipcloak encrypts all unencrypted entries in the zipfile.  This is the default action.


       The -d option is used to decrypt encrypted entries in the zipfile.


       zipcloak uses original zip encryption which is considered weak.


       Note:  The encryption code of this program is not copyrighted and is put in the public domain.  It was originally written in Europe and can be freely distributed from any country including the U.S.A.  (Previously if this program was imported into the U.S.A, it could not be re-exported from the U.S.A to another country.)  See the file README.CR included in the source distribution for more on this.  Otherwise, the Info-ZIP license applies.


```
###examples
```
       To be added.


```
###bugs
```
       Large files (> 2 GB) and large archives not yet supported.

       Split archives not yet supported.  A work around is to convert the split archive to a single-file archive using zip and then use zipcloak on the single-file archive.  If needed, the resulting archive can then be split again using zip.



```
###see also
```
       zip(1), unzip(1)

```
###author
```
       Info-ZIP



```
