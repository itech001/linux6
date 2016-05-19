#lpadmin  



###name
```
       lpadmin - configure cups printers and classes

```
###synopsis
```
       lpadmin [ -E ] [-U username ] [ -h server[:port] ] -d destination
       lpadmin [ -E ] [-U username ] [ -h server[:port] ] -p destination [ -R name-default ] option(s)
       lpadmin [ -E ] [-U username ] [ -h server[:port] ] -x destination

```
###description
```
       lpadmin configures printer and class queues provided by CUPS. It can also be used to set the server default printer or class.

       When specified before the -d, -p, or -x options, the -E option forces encryption when connecting to the server.

       The first form of the command (-d) sets the default printer or class to destination.  Subsequent print jobs submitted via the lp(1) or lpr(1) commands will use this destination unless the user specifies otherwise with the lpoptions(1) command.

       The second form of the command (-p) configures the named printer or class.  The additional options are described below.

       The third form of the command (-x) deletes the printer or class destination. Any jobs that are pending for the destination will be removed and any job that is currently printed will be aborted.

```
###configuration options
```
       The following options are recognized when configuring a printer queue:

       -c class
            Adds the named printer to class.  If class does not exist it is created automatically.

       -i interface
            Sets a System V style interface script for the printer. This option cannot be specified with the -P option (PPD file) and is intended for providing support for legacy printer drivers.

       -m model
            Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver interfaces. Use the -m option with the lpinfo(8) command to get a list of supported models.

       -o cupsIPPSupplies=true

       -o cupsIPPSupplies=false
            Specifies whether IPP supply level values should be reported.

       -o cupsSNMPSupplies=true

       -o cupsSNMPSupplies=false
            Specifies whether SNMP supply level (RFC 3805) values should be reported.

       -o job-k-limit=value
            Sets the kilobyte limit for per-user quotas. The value is an integer number of kilobytes; one kilobyte is 1024 bytes.

       -o job-page-limit=value
            Sets the page limit for per-user quotas. The value is the integer number of pages that can be printed; double-sided pages are counted as two pages.

       -o job-quota-period=value
            Sets the accounting period for per-user quotas. The value is an integer number of seconds; 86,400 seconds are in one day.

       -o job-sheets-default=banner

       -o job-sheets-default=banner,banner
            Sets the default banner page(s) to use for print jobs.

       -o name=value
            Sets a PPD option for the printer. PPD options can be listed using the -l option with the lpoptions(1) command.

       -o name-default=value
            Sets a default server-side option for the destination. Any print-time option can be defaulted, e.g. "-o cpi-default=17" to set the default "cpi" option value to 17.

       -o port-monitor=name
            Sets the binary communications program to use when printing, "none", "bcp", or "tbcp". The default program is "none". The specified port monitor must be listed in the printer's PPD file.

       -o printer-error-policy=name
            Sets the error policy to be used when the printer backend is unable to send the job to the printer. The name must be one of "abort-job", "retry-job", "retry-current-job", or "stop-printer". The default error policy is "stop-printer" for printers and "retry-current-job" for classes.

       -o printer-is-shared=true/false
            Sets the destination to shared/published or unshared/unpublished.  Shared/published destinations are publicly announced by the server on the LAN based on the browsing configuration in cupsd.conf, while unshared/unpublished destinations are not announced. The default value is "true".

       -o printer-op-policy=name
            Sets the IPP operation policy associated with the destination. The name must be defined in the cupsd.conf in a Policy section.  The default operation policy is "default".

       -R name-default
            Deletes the named option from printer.

       -r class
            Removes the named printer from class.  If the resulting class becomes empty it is removed.

       -u allow:user,user,@group

       -u deny:user,user,@group

       -u allow:all

       -u deny:none
            Sets user-level access control on a destination. Names starting with "@" are interpreted as UNIX groups. The latter two forms turn user-level access control off.

       -v "device-uri"
            Sets the device-uri attribute of the printer queue. Use the -v option with the lpinfo(8) command to get a list of supported device URIs and schemes.

       -D "info"
            Provides a textual description of the destination.

       -E
            Enables the destination and accepts jobs; this is the same as running the cupsaccept(8) and cupsenable(8) programs on the destination.

       -L "location"
            Provides a textual location of the destination.

       -P ppd-file
            Specifies a PostScript Printer Description file to use with the printer. If specified, this option overrides the -i option (interface script).

```
###compatibility
```
       Unlike the System V printing system, CUPS allows printer names to contain any printable character except SPACE, TAB, "/", or "#".  Also, printer and class names are not case-sensitive.  Finally, the CUPS version of lpadmin may ask the user for an access password depending on the printing system configuration. This differs from the System V version which requires the root user to execute this command.

```
###limitations
```
       The CUPS version of lpadmin does not support all of the System V or Solaris printing system configuration options.

```
###see also
```
       cupsaccept(8), cupsenable(8), lpinfo(8), lpoptions(1),
       http://localhost:631/help

```
###copyright
```
       Copyright 2007-2013 by Apple Inc.



```
