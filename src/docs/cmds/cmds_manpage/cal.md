#cal  

###name
```
     cal, ncal — displays a calendar and the date of Easter

```
###synopsis
```
     cal [-3hjy] [-A number] [-B number] [[month] year]
     cal [-3hj] [-A number] [-B number] -m month [year]
     ncal [-3bhjJpwySM] [-A number] [-B number] [-s country_code] [[month] year]
     ncal [-3bhJeoSM] [-A number] [-B number] [year]
     ncal [-CN] [-H yyyy-mm-dd] [-d yyyy-mm]

```
###description
```
     The cal utility displays a simple calendar in traditional format and ncal offers an alternative layout, more options and the date of Easter.  The new format is a little cramped but it makes a year fit on a 25x80 terminal.  If arguments are not specified, the current month is displayed.

     The options are as follows:

     -h      Turns off highlighting of today.

     -J      Display Julian Calendar, if combined with the -o option, display date of Orthodox Easter according to the Julian Calendar.

     -e      Display date of Easter (for western churches).

     -j      Display Julian days (days one-based, numbered from January 1).

     -m month
             Display the specified month.  If month is specified as a decimal number, it may be followed by the letter ‘f’ or ‘p’ to indicate the following or preceding month of that number, respectively.

     -o      Display date of Orthodox Easter (Greek and Russian Orthodox Churches).

     -p      Print the country codes and switching days from Julian to Gregorian Calendar as they are assumed by ncal.  The country code as determined from the local environment is marked with an asterisk.

     -s country_code
             Assume the switch from Julian to Gregorian Calendar at the date associated with the country_code.  If not specified, ncal tries to guess the switch date from the local environment or falls back to September 2, 1752.  This was when Great Britain and her colonies switched to the Gregorian Calendar.

     -w      Print the number of the week below each week column.

     -y      Display a calendar for the specified year. This option is implied when a year but no month are specified on the command line.

     -3      Display the previous, current and next month surrounding today.

     -1      Display only the current month. This is the default.

     -A number
             Months to add after. The specified number of months is added to the end of the display. This is in addition to any date range selected by the -y, -3, or -1 options. For example, “cal -y -B2 -A2” shows everything from November of the previous year to February of the following year. Negative numbers are allowed, in which case the specified number of months is subtracted. For example, “cal -y -B-6” shows July to December. And “cal -A11” simply shows the next 12 months.

     -B number
             Months to add before. The specified number of months is added to the beginning of the display. See -A for examples.

     -C      Switch to cal mode.

     -N      Switch to ncal mode.

     -d yyyy-mm
             Use yyyy-mm as the current date (for debugging of date selection).

     -H yyyy-mm-dd
             Use yyyy-mm-dd as the current date (for debugging of highlighting).

     -M      Weeks start on Monday.

     -S      Weeks start on Sunday.

     -b      Use oldstyle format for ncal output.

     A single parameter specifies the year (1–9999) to be displayed; note the year must be fully specified: “cal 89” will not display a calendar for 1989.  Two parameters denote the month and year; the month is either a number between 1 and 12, or a full or abbreviated name as specified by the current locale.  Month and year default to those of the current system clock and time zone (so “cal -m 8” will display a calendar for the month of August in the current year).

     Not all options can be used together. For example, the options -y, -3, and -1 are mutually exclusive. If inconsistent options are given, the later ones take precedence over the earlier ones.

     A year starts on January 1.

```
###see also
```
     calendar(3), strftime(3)

```
###history
```
     A cal command appeared in Version 5 AT&T UNIX.  The ncal command appeared in FreeBSD 2.2.6.  The output of the cal command is supposed to be bit for bit compatible to the original Unix cal command, because its output is processed by other programs like CGI scripts, that should not be broken. Therefore it will always output 8 lines, even if only 7 contain data. This extra blank line also appears with the original cal command, at least on Solaris 8

```
###authors
```
     The ncal command and manual were written by Wolfgang Helbig <helbig@FreeBSD.org>.

```
###bugs
```
     The assignment of Julian–Gregorian switching dates to country codes is historically naive for many countries.

     Not all options are compatible and using them in different orders will give varying results.

```
