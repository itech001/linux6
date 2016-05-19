#ip  



###name
```
       ip - show / manipulate routing, devices, policy routing and tunnels

```
###synopsis
```
       ip [ OPTIONS ] OBJECT { COMMAND | help }


       ip [ -force ] -batch filename


       OBJECT := { link | addr | addrlabel | route | rule | neigh | ntable | tunnel | tuntap | maddr | mroute | mrule | monitor | xfrm | netns | l2tp | tcp_metrics }


       OPTIONS := { -V[ersion] | -s[tatistics] | -r[esolve] | -f[amily] { inet | inet6 | ipx | dnet | link } | -o[neline] }



```
###options
```
       -V, -Version
              Print the version of the ip utility and exit.


       -b, -batch <FILENAME>
              Read commands from provided file or standard input and invoke them.  First failure will cause termination of ip.


       -force Don't terminate ip on errors in batch mode.  If there were any errors during execution of the commands, the application return code will be non zero.


       -s, -stats, -statistics
              Output more information.  If the option appears twice or more, the amount of information increases.  As a rule, the information is statistics or some time values.


       -l, -loops <COUNT>
              Specify maximum number of loops the 'ip addr flush' logic will attempt before giving up.  The default is 10.  Zero (0) means loop until all addresses are removed.


       -f, -family <FAMILY>
              Specifies the protocol family to use. The protocol family identifier can be one of inet, inet6, bridge, ipx, dnet or link.  If this option is not present, the protocol family is guessed from other arguments.  If the rest of the command line does not give enough information to guess the family, ip falls back to the default one, usually inet or any.  link is a special family identifier meaning that no networking protocol is involved.


       -4     shortcut for -family inet.


       -6     shortcut for -family inet6.


       -B     shortcut for -family bridge.


       -D     shortcut for -family decnet.


       -I     shortcut for -family ipx.


       -0     shortcut for -family link.


       -o, -oneline
              output each record on a single line, replacing line feeds with the '\' character. This is convenient when you want to count records with wc(1) or to grep(1) the output.


       -r, -resolve
              use the system's name resolver to print DNS names instead of host addresses.


IP - COMMAND SYNTAX
   OBJECT
       address
              - protocol (IP or IPv6) address on a device.


       addrlabel
              - label configuration for protocol address selection.


       l2tp   - tunnel ethernet over IP (L2TPv3).


       link   - network device.


       maddress
              - multicast address.


       monitor
              - watch for netlink messages.


       mroute - multicast routing cache entry.


       mrule  - rule in multicast routing policy database.


       neighbour
              - manage ARP or NDISC cache entries.


       netns  - manage network namespaces.


       ntable - manage the neighbor cache's operation.


       route  - routing table entry.


       rule   - rule in routing policy database.


       tcp_metrics/tcpmetrics
              - manage TCP Metrics


       tunnel - tunnel over IP.


       tuntap - manage TUN/TAP devices.


       xfrm   - manage IPSec policies.


       The names of all objects may be written in full or abbreviated form, for exampe address can be abbreviated as addr or just a.


   COMMAND
       Specifies the action to perform on the object.  The set of possible actions depends on the object type.  As a rule, it is possible to add, delete and show (or list ) objects, but some objects do not allow all of these operations or have some additional commands.  The help command is available for all objects.  It prints out a list of available commands and argument syntax conventions.

       If no command is given, some default command is assumed.  Usually it is list or, if the objects of this class cannot be listed, help.


```
###history
```
       ip was written by Alexey N. Kuznetsov and added in Linux 2.2.

```
###see also
```
       ip-address(8), ip-addrlabel(8), ip-l2tp(8), ip-link(8), ip-maddress(8), ip-monitor(8), ip-mroute(8), ip-neighbour(8), ip-netns(8), ip-ntable(8), ip-route(8), ip-rule(8), ip-tcp_metrics(8), ip-tunnel(8), ip-xfrm(8)
       IP Command reference ip-cref.ps

```
###reporting bugs
```
       Report any bugs to the Network Developers mailing list <netdev@vger.kernel.org> where the development and maintenance is primarily done.  You do not have to be subscribed to the list to send a message there.


```
###author
```
       Original Manpage by Michail Litvak <mci@owl.openwall.com>



```
