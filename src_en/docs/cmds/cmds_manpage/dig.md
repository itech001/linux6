#dig  



###name
```
       dig - DNS lookup utility

```
###synopsis
```
       dig [@server] [-b address] [-c class] [-f filename] [-k filename] [-m] [-p port#] [-q name] [-t type] [-x addr] [-y [hmac:]name:key] [-4] [-6] [name] [type] [class] [queryopt...]

       dig [-h]

       dig [global-queryopt...] [query...]

```
###description
```
       dig (domain information groper) is a flexible tool for interrogating DNS name servers. It performs DNS lookups and displays the answers that are returned from the name server(s) that were queried. Most DNS administrators use dig to troubleshoot DNS problems because of its flexibility, ease of use and clarity of output. Other lookup tools tend to have less functionality than dig.

       Although dig is normally used with command-line arguments, it also has a batch mode of operation for reading lookup requests from a file. A brief summary of its command-line arguments and options is printed when the -h option is given. Unlike earlier versions, the BIND 9 implementation of dig allows multiple lookups to be issued from the command line.

       Unless it is told to query a specific name server, dig will try each of the servers listed in /etc/resolv.conf. If no usable server addresses are found, dig will send the query to the local host.

       When no command line arguments or options are given, dig will perform an NS query for "." (the root).

       It is possible to set per-user defaults for dig via ${HOME}/.digrc. This file is read and any options in it are applied before the command line arguments.

       The IN and CH class names overlap with the IN and CH top level domains names. Either use the -t and -c options to specify the type and class, use the -q the specify the domain name, or use "IN." and "CH." when looking up these top level domains.

```
###simple usage
```
       A typical invocation of dig looks like:

            dig @server name type

       where:

       server
           is the name or IP address of the name server to query. This can be an IPv4 address in dotted-decimal notation or an IPv6 address in colon-delimited notation. When the supplied server argument is a hostname, dig resolves that name before querying that name server.

           If no server argument is provided, dig consults /etc/resolv.conf; if an address is found there, it queries the name server at that address. If either of the -4 or -6 options are in use, then only addresses for the corresponding transport will be tried. If no usable addresses are found, dig will send the query to the local host. The reply from the name server that responds is displayed.

       name
           is the name of the resource record that is to be looked up.

       type
           indicates what type of query is required — ANY, A, MX, SIG, etc.  type can be any valid query type. If no type argument is supplied, dig will perform a lookup for an A record.

```
###options
```
       The -b option sets the source IP address of the query to address. This must be a valid address on one of the host's network interfaces or "0.0.0.0" or "::". An optional port may be specified by appending "#<port>"

       The default query class (IN for internet) is overridden by the -c option.  class is any valid class, such as HS for Hesiod records or CH for Chaosnet records.

       The -f option makes dig operate in batch mode by reading a list of lookup requests to process from the file filename. The file contains a number of queries, one per line. Each entry in the file should be organized in the same way they would be presented as queries to dig using the command-line interface.

       The -m option enables memory usage debugging.

       If a non-standard port number is to be queried, the -p option is used.  port# is the port number that dig will send its queries instead of the standard DNS port number 53. This option would be used to test a name server that has been configured to listen for queries on a non-standard port number.

       The -4 option forces dig to only use IPv4 query transport. The -6 option forces dig to only use IPv6 query transport.

       The -t option sets the query type to type. It can be any valid query type which is supported in BIND 9. The default query type is "A", unless the -x option is supplied to indicate a reverse lookup. A zone transfer can be requested by specifying a type of AXFR. When an incremental zone transfer (IXFR) is required, type is set to ixfr=N. The incremental zone transfer will contain the changes made to the zone since the serial number in the zone's SOA record was N.

       The -q option sets the query name to name. This useful do distinguish the name from other arguments.

       Reverse lookups — mapping addresses to names — are simplified by the -x option.  addr is an IPv4 address in dotted-decimal notation, or a colon-delimited IPv6 address. When this option is used, there is no need to provide the name, class and type arguments.  dig automatically performs a lookup for a name like 11.12.13.10.in-addr.arpa and sets the query type and class to PTR and IN respectively. By default, IPv6 addresses are looked up using nibble format under the IP6.ARPA domain. To use the older RFC1886 method using the IP6.INT domain specify the -i option. Bit string labels (RFC2874) are now experimental and are not attempted.

       To sign the DNS queries sent by dig and their responses using transaction signatures (TSIG), specify a TSIG key file using the -k option. You can also specify the TSIG key itself on the command line using the -y option; hmac is the type of the TSIG, default HMAC-MD5, name is the name of the TSIG key and key is the actual key. The key is a base-64 encoded string, typically generated by dnssec-keygen(8). Caution should be taken when using the -y option on multi-user systems as the key can be visible in the output from ps(1) or in the shell's history file. When using TSIG authentication with dig, the name server that is queried needs to know the key and algorithm that is being used. In BIND, this is done by providing appropriate key and server statements in named.conf.

```
###query options
```
       dig provides a number of query options which affect the way in which lookups are made and the results displayed. Some of these set or reset flag bits in the query header, some determine which sections of the answer get printed, and others determine the timeout and retry strategies.

       Each query option is identified by a keyword preceded by a plus sign (+). Some keywords set or reset an option. These may be preceded by the string no to negate the meaning of that keyword. Other keywords assign values to options like the timeout interval. They have the form +keyword=value. The query options are:

       +[no]tcp
           Use [do not use] TCP when querying name servers. The default behavior is to use UDP unless an AXFR or IXFR query is requested, in which case a TCP connection is used.

       +[no]vc
           Use [do not use] TCP when querying name servers. This alternate syntax to +[no]tcp is provided for backwards compatibility. The "vc" stands for "virtual circuit".

       +[no]ignore
           Ignore truncation in UDP responses instead of retrying with TCP. By default, TCP retries are performed.

       +domain=somename
           Set the search list to contain the single domain somename, as if specified in a domain directive in /etc/resolv.conf, and enable search list processing as if the +search option were given.

       +[no]search
           Use [do not use] the search list defined by the searchlist or domain directive in resolv.conf (if any). The search list is not used by default.

       +[no]showsearch
           Perform [do not perform] a search showing intermediate results.

       +[no]defname
           Deprecated, treated as a synonym for +[no]search

       +[no]aaonly
           Sets the "aa" flag in the query.

       +[no]aaflag
           A synonym for +[no]aaonly.

       +[no]adflag
           Set [do not set] the AD (authentic data) bit in the query. This requests the server to return whether all of the answer and authority sections have all been validated as secure according to the security policy of the server. AD=1 indicates that all records have been validated as secure and the answer is not from a OPT-OUT range. AD=0 indicate that some part of the answer was insecure or not validated. This bit is set by default.

       +[no]cdflag
           Set [do not set] the CD (checking disabled) bit in the query. This requests the server to not perform DNSSEC validation of responses.

       +[no]cl
           Display [do not display] the CLASS when printing the record.

       +[no]ttlid
           Display [do not display] the TTL when printing the record.

       +[no]recurse
           Toggle the setting of the RD (recursion desired) bit in the query. This bit is set by default, which means dig normally sends recursive queries. Recursion is automatically disabled when the +nssearch or +trace query options are used.

       +[no]nssearch
           When this option is set, dig attempts to find the authoritative name servers for the zone containing the name being looked up and display the SOA record that each name server has for the zone.

       +[no]trace
           Toggle tracing of the delegation path from the root name servers for the name being looked up. Tracing is disabled by default. When tracing is enabled, dig makes iterative queries to resolve the name being looked up. It will follow referrals from the root servers, showing the answer from each server that was used to resolve the lookup.

           +dnssec is also set when +trace is set to better emulate the default queries from a nameserver.

       +[no]cmd
           Toggles the printing of the initial comment in the output identifying the version of dig and the query options that have been applied. This comment is printed by default.

       +[no]short
           Provide a terse answer. The default is to print the answer in a verbose form.

       +[no]identify
           Show [or do not show] the IP address and port number that supplied the answer when the +short option is enabled. If short form answers are requested, the default is not to show the source address and port number of the server that provided the answer.

       +[no]comments
           Toggle the display of comment lines in the output. The default is to print comments.

       +[no]rrcomments
           Toggle the display of per-record comments in the output (for example, human-readable key information about DNSKEY records). The default is not to print record comments unless multiline mode is active.

       +split=W
           Split long hex- or base64-formatted fields in resource records into chunks of W characters (where W is rounded up to the nearest multiple of 4).  +nosplit or +split=0 causes fields not to be split at all. The default is 56 characters, or 44 characters when multiline mode is active.

       +[no]stats
           This query option toggles the printing of statistics: when the query was made, the size of the reply and so on. The default behavior is to print the query statistics.

       +[no]qr
           Print [do not print] the query as it is sent. By default, the query is not printed.

       +[no]question
           Print [do not print] the question section of a query when an answer is returned. The default is to print the question section as a comment.

       +[no]answer
           Display [do not display] the answer section of a reply. The default is to display it.

       +[no]authority
           Display [do not display] the authority section of a reply. The default is to display it.

       +[no]additional
           Display [do not display] the additional section of a reply. The default is to display it.

       +[no]all
           Set or clear all display flags.

       +time=T
           Sets the timeout for a query to T seconds. The default timeout is 5 seconds. An attempt to set T to less than 1 will result in a query timeout of 1 second being applied.

       +tries=T
           Sets the number of times to try UDP queries to server to T instead of the default, 3. If T is less than or equal to zero, the number of tries is silently rounded up to 1.

       +retry=T
           Sets the number of times to retry UDP queries to server to T instead of the default, 2. Unlike +tries, this does not include the initial query.

       +ndots=D
           Set the number of dots that have to appear in name to D for it to be considered absolute. The default value is that defined using the ndots statement in /etc/resolv.conf, or 1 if no ndots statement is present. Names with fewer dots are interpreted as relative names and will be searched for in the domains listed in the search or domain directive in /etc/resolv.conf.

       +bufsize=B
           Set the UDP message buffer size advertised using EDNS0 to B bytes. The maximum and minimum sizes of this buffer are 65535 and 0 respectively. Values outside this range are rounded up or down appropriately. Values other than zero will cause a EDNS query to be sent.

       +edns=#
           Specify the EDNS version to query with. Valid values are 0 to 255. Setting the EDNS version will cause a EDNS query to be sent.  +noedns clears the remembered EDNS version. EDNS is set to 0 by default.

       +[no]multiline
           Print records like the SOA records in a verbose multi-line format with human-readable comments. The default is to print each record on a single line, to facilitate machine parsing of the dig output.

       +[no]onesoa
           Print only one (starting) SOA record when performing an AXFR. The default is to print both the starting and ending SOA records.

       +[no]fail
           Do not try the next server if you receive a SERVFAIL. The default is to not try the next server which is the reverse of normal stub resolver behavior.

       +[no]besteffort
           Attempt to display the contents of messages which are malformed. The default is to not display malformed answers.

       +[no]dnssec
           Requests DNSSEC records be sent by setting the DNSSEC OK bit (DO) in the OPT record in the additional section of the query.

       +[no]sigchase
           Chase DNSSEC signature chains. Requires dig be compiled with -DDIG_SIGCHASE.

       +trusted-key=####
           Specifies a file containing trusted keys to be used with +sigchase. Each DNSKEY record must be on its own line.

           If not specified, dig will look for /etc/trusted-key.key then trusted-key.key in the current directory.

           Requires dig be compiled with -DDIG_SIGCHASE.

       +[no]topdown
           When chasing DNSSEC signature chains perform a top-down validation. Requires dig be compiled with -DDIG_SIGCHASE.

       +[no]nsid
           Include an EDNS name server ID request when sending a query.

       +[no]keepopen
           Keep the TCP socket open between queries and reuse it rather than creating a new TCP socket for each lookup. The default is +nokeepopen.

```
###multiple queries
```
       The BIND 9 implementation of dig supports specifying multiple queries on the command line (in addition to supporting the -f batch file option). Each of those queries can be supplied with its own set of flags, options and query options.

       In this case, each query argument represent an individual query in the command-line syntax described above. Each consists of any of the standard options and flags, the name to be looked up, an optional query type and class and any query options that should be applied to that query.

       A global set of query options, which should be applied to all queries, can also be supplied. These global query options must precede the first tuple of name, class, type, options, flags, and query options supplied on the command line. Any global query options (except the +[no]cmd option) can be overridden by a query-specific set of query options. For example:

           dig +qr www.isc.org any -x 127.0.0.1 isc.org ns +noqr

       shows how dig could be used from the command line to make three lookups: an ANY query for www.isc.org, a reverse lookup of 127.0.0.1 and a query for the NS records of isc.org. A global query option of +qr is applied, so that dig shows the initial query it made for each lookup. The final query has a local query option of +noqr which means that dig will not print the initial query when it looks up the NS records for isc.org.

```
###idn support
```
       If dig has been built with IDN (internationalized domain name) support, it can accept and display non-ASCII domain names.  dig appropriately converts character encoding of domain name before sending a request to DNS server or displaying a reply from the server. If you'd like to turn off the IDN support for some reason, defines the IDN_DISABLE environment variable. The IDN support is disabled if the variable is set when dig runs.

```
###files
```
       /etc/resolv.conf

       ${HOME}/.digrc

```
###see also
```
       host(1), named(8), dnssec-keygen(8), RFC1035.

```
###bugs
```
       There are probably too many query options.

```
###copyright
```
       Copyright © 2004-2011, 2013 Internet Systems Consortium, Inc. ("ISC")
       Copyright © 2000-2003 Internet Software Consortium.



```
