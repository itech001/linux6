#apropos  



###name
```
       apropos - search the manual page names and descriptions

```
###synopsis
```
       apropos [-dalv?V] [-e|-w|-r] [-s list] [-m system[,...]] [-M path] [-L locale] [-C file] keyword ...

```
###description
```
       Each manual page has a short description available within it.  apropos searches the descriptions for instances of keyword.

       keyword is usually a regular expression, as if (-r) was used, or may contain wildcards (-w), or match the exact keyword (-e).  Using these options, it may be necessary to quote the keyword or escape (\) the special characters to stop the shell from interpreting them.

       The standard matching rules allow matches to be made against the page name and word boundaries in the description.

       The database searched by apropos is updated by the mandb program.  Depending on your installation, this may be run by a periodic cron job, or may need to be run manually after new manual pages have been installed.

```
###options
```
       -d, --debug
              Print debugging information.

       -v, --verbose
              Print verbose warning messages.

       -r, --regex
              Interpret each keyword as a regular expression.  This is the default behaviour.  Each keyword will be matched against the page names and the descriptions independently.  It can match any part of either.  The match is not limited to word boundaries.

       -w, --wildcard
              Interpret each keyword as a pattern containing shell style wildcards.  Each keyword will be matched against the page names and the descriptions independently.  If --exact is also used, a match will only be found if an expanded keyword matches an entire description or page name.  Otherwise the keyword is also allowed to match on word boundaries in the description.

       -e, --exact
              Each keyword will be exactly matched against the page names and the descriptions.

       -a, --and
              Only display items that match all the supplied keywords.  The default is to display items that match any keyword.

       -l, --long
              Do not trim output to the terminal width.  Normally, output will be truncated to the terminal width to avoid ugly results from poorly-written NAME sections.

       -s list, --sections list, --section list
              Search only the given manual sections.  list is a colon- or comma-separated list of sections.  If an entry in list is a simple section, for example "3", then the displayed list of descriptions will include pages in sections "3", "3perl", "3x", and so on; while if an entry in list has an extension, for example "3perl", then the list will only include pages in that exact part of the manual section.

       -m system[,...], --systems=system[,...]
              If this system has access to other operating system's manual page descriptions, they can be searched using this option.  To search NewOS's manual page descriptions, use the option -m NewOS.

              The system specified can be a combination of comma-delimited operating system names.  To include a search of the native operating system's whatis descriptions, include the system name man in the argument string.  This option will override the $SYSTEM environment variable.

       -M path, --manpath=path
              Specify an alternate set of colon-delimited manual page hierarchies to search.  By default, apropos uses the $MANPATH environment variable, unless it is empty or unset, in which case it will determine an appropriate manpath based on your $PATH environment variable.  This option overrides the contents of $MANPATH.

       -L locale, --locale=locale
              apropos will normally determine your current locale by a call to the C function setlocale(3) which interrogates various environment variables, possibly including $LC_MESSAGES and $LANG.  To temporarily override the determined value, use this option to supply a locale string directly to apropos.  Note that it will not take effect until the search for pages actually begins.  Output such as the help message will always be displayed in the initially determined locale.

       -C file, --config-file=file
              Use this user configuration file rather than the default of ~/.manpath.

       -?, --help
              Print a help message and exit.

       --usage
              Print a short usage message and exit.

       -V, --version
              Display version information.

```
###exit status
```
       0      Successful program execution.

       1      Usage, syntax or configuration file error.

       2      Operational error.

       16     Nothing was found that matched the criteria specified.

```
###environment
```
       SYSTEM If $SYSTEM is set, it will have the same effect as if it had been specified as the argument to the -m option.

       MANPATH
              If $MANPATH is set, its value is interpreted as the colon-delimited manual page hierarchy search path to use.

       MANWIDTH
              If $MANWIDTH is set, its value is used as the terminal width (see the --long option).  If it is not set, the terminal width will be calculated using an ioctl(2) if available, the value of $COLUMNS, or falling back to 80 characters if all else fails.

       POSIXLY_CORRECT
              If $POSIXLY_CORRECT is set, even to a null value, the default apropos search will be as an extended regex (-r).  Nowadays, this is the default behaviour anyway.

```
###files
```
       /usr/share/man/index.(bt|db|dir|pag)
              A traditional global index database cache.

       /var/cache/man/index.(bt|db|dir|pag)
              An FHS compliant global index database cache.

       /usr/share/man/.../whatis
              A traditional whatis text database.

```
###see also
```
       man(1), whatis(1), mandb(8)

```
###author
```
       Wilf. (G.Wilford@ee.surrey.ac.uk).
       Fabrizio Polacco (fpolacco@debian.org).
       Colin Watson (cjwatson@debian.org).



```
