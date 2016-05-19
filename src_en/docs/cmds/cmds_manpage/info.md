#info  



###name
```
       info - read Info documents

```
###synopsis
```
       info [OPTION]... [MENU-ITEM...]

```
###description
```
       Read documentation in Info format.

```
###options
```
       -a, --all
              use all matching manuals.

       -k, --apropos=STRING
              look up STRING in all indices of all manuals.

       -d, --directory=DIR
              add DIR to INFOPATH.

       --dribble=FILE
              remember user keystrokes in FILENAME.

       -f, --file=MANUAL
              specify Info manual to visit.

       -h, --help
              display this help and exit.

       --index-search=STRING
              go to node pointed by index entry STRING.

       -n, --node=NODENAME
              specify nodes in first visited Info file.

       -o, --output=FILE
              output selected nodes to FILE.

       -R, --raw-escapes
              output "raw" ANSI escapes (default).

       --no-raw-escapes
              output escapes as literal text.

       --restore=FILE
              read initial keystrokes from FILE.

       -O, --show-options, --usage
              go to command-line options node.

       --strict-node-location
              (for debugging) use Info file pointers as-is.

       --subnodes
              recursively output menu items.

       -v, --variable VAR=VALUE
              assign VALUE to Info variable VAR.

       --vi-keys
              use vi-like and less-like key bindings.

       --version
              display version information and exit.

       -w, --where, --location
              print physical location of Info file.

       -x, --debug=NUMBER
              set debugging level (-1 for all).

       The first non-option argument, if present, is the menu entry to start from; it is searched for in all `dir' files along INFOPATH.  If it is not present, info merges all `dir' files and shows the result.  Any remaining arguments are treated as the names of menu items relative to the initial node visited.

       For a summary of key bindings, type h within Info.

```
###examples
```
       info   show top-level dir menu

       info info
              show the general manual for Info readers

       info info-stnd
              show the manual specific to this Info program

       info emacs
              start at emacs node from top-level dir

       info emacs buffers
              start at buffers node within emacs manual

       info --show-options emacs
              start at node with emacs' command line options

       info --subnodes -o out.txt emacs
              dump entire manual to out.txt

       info -f ./foo.info
              show file ./foo.info, not searching dir

```
###reporting bugs
```
       Email bug reports to bug-texinfo@gnu.org, general questions and discussion to help-texinfo@gnu.org.
       Texinfo home page: http://www.gnu.org/software/texinfo/

```
###copyright
```
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

```
###see also
```
       The full documentation for info is maintained as a Texinfo manual.  If the info program is properly installed at your site, the command

              info info

       should give you access to the complete manual.  (Or, if you have Emacs, M-x info will lead to the manual.)



```
