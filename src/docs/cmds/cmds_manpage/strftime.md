#strftime  



###name
```
       strftime - format date and time

```
###synopsis
```
       #include <time.h>

       size_t strftime(char *s, size_t max, const char *format,
                       const struct tm *tm);

```
###description
```
       The strftime() function formats the broken-down time tm according to the format specification format and places the result in the character array s of size max.

       The format specification is a null-terminated string and may contain special character sequences called conversion specifications, each of which is introduced by a '%' character and terminated by some other character known as a conversion specifier character.  All other character sequences are ordinary character sequences.

       The characters of ordinary character sequences (including the null byte) are copied verbatim from format to s.  However, the characters of conversion specifications are replaced as follows:

       %a     The abbreviated weekday name according to the current locale.

       %A     The full weekday name according to the current locale.

       %b     The abbreviated month name according to the current locale.

       %B     The full month name according to the current locale.

       %c     The preferred date and time representation for the current locale.

       %C     The century number (year/100) as a 2-digit integer. (SU)

       %d     The day of the month as a decimal number (range 01 to 31).

       %D     Equivalent to %m/%d/%y.  (Yecch—for Americans only.  Americans should note that in other countries %d/%m/%y is rather common.  This means that in international context this format is ambiguous and should not be used.) (SU)

       %e     Like %d, the day of the month as a decimal number, but a leading zero is replaced by a space. (SU)

       %E     Modifier: use alternative format, see below. (SU)

       %F     Equivalent to %Y-%m-%d (the ISO 8601 date format). (C99)

       %G     The ISO 8601 week-based year (see NOTES) with century as a decimal number.  The 4-digit year corresponding to the ISO week number (see %V).  This has the same format and value as %Y, except that if the ISO week number belongs to the previous or next year, that year is used instead. (TZ)

       %g     Like %G, but without century, that is, with a 2-digit year (00-99). (TZ)

       %h     Equivalent to %b.  (SU)

       %H     The hour as a decimal number using a 24-hour clock (range 00 to 23).

       %I     The hour as a decimal number using a 12-hour clock (range 01 to 12).

       %j     The day of the year as a decimal number (range 001 to 366).

       %k     The hour (24-hour clock) as a decimal number (range 0 to 23); single digits are preceded by a blank.  (See also %H.)  (TZ)

       %l     The hour (12-hour clock) as a decimal number (range 1 to 12); single digits are preceded by a blank.  (See also %I.)  (TZ)

       %m     The month as a decimal number (range 01 to 12).

       %M     The minute as a decimal number (range 00 to 59).

       %n     A newline character. (SU)

       %O     Modifier: use alternative format, see below. (SU)

       %p     Either "AM" or "PM" according to the given time value, or the corresponding strings for the current locale.  Noon is treated as "PM" and midnight as "AM".

       %P     Like %p but in lowercase: "am" or "pm" or a corresponding string for the current locale. (GNU)

       %r     The time in a.m. or p.m. notation.  In the POSIX locale this is equivalent to %I:%M:%S %p.  (SU)

       %R     The time in 24-hour notation (%H:%M).  (SU) For a version including the seconds, see %T below.

       %s     The number of seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC). (TZ)

       %S     The second as a decimal number (range 00 to 60).  (The range is up to 60 to allow for occasional leap seconds.)

       %t     A tab character. (SU)

       %T     The time in 24-hour notation (%H:%M:%S).  (SU)

       %u     The day of the week as a decimal, range 1 to 7, Monday being 1.  See also %w.  (SU)

       %U     The week number of the current year as a decimal number, range 00 to 53, starting with the first Sunday as the first day of week 01.  See also %V and %W.

       %V     The ISO 8601 week number (see NOTES) of the current year as a decimal number, range 01 to 53, where week 1 is the first week that has at least 4 days in the new year.  See also %U and %W.  (SU)

       %w     The day of the week as a decimal, range 0 to 6, Sunday being 0.  See also %u.

       %W     The week number of the current year as a decimal number, range 00 to 53, starting with the first Monday as the first day of week 01.

       %x     The preferred date representation for the current locale without the time.

       %X     The preferred time representation for the current locale without the date.

       %y     The year as a decimal number without a century (range 00 to 99).

       %Y     The year as a decimal number including the century.

       %z     The +hhmm or -hhmm numeric timezone (that is, the hour and minute offset from UTC). (SU)

       %Z     The timezone name or abbreviation.

       %+     The date and time in date(1) format. (TZ) (Not supported in glibc2.)

       %%     A literal '%' character.

       Some conversion specifications can be modified by preceding the conversion specifier character by the E or O modifier to indicate that an alternative format should be used.  If the alternative format or specification does not exist for the current locale, the behavior will be as if the unmodified conversion specification were used. (SU) The Single UNIX Specification mentions %Ec, %EC, %Ex, %EX, %Ey, %EY, %Od, %Oe, %OH, %OI, %Om, %OM, %OS, %Ou, %OU, %OV, %Ow, %OW, %Oy, where the effect of the O modifier is to use alternative numeric symbols (say, roman numerals), and that of the E modifier is to use a locale-dependent alternative representation.

       The broken-down time structure tm is defined in <time.h>.  See also ctime(3).

```
###return value
```
       Provided that the result string, including the terminating null byte, does not exceed max bytes, strftime() returns the number of bytes (excluding the terminating null byte) placed in the array s.  If the length of the result string (including the terminating null byte) would exceed max bytes, then strftime() returns 0, and the contents of the array are undefined.  (This behavior applies since at least libc 4.4.4; very old versions of libc, such as libc 4.4.1, would return max if the array was too small.)

       Note that the return value 0 does not necessarily indicate an error.  For example, in many locales %p yields an empty string.  An empty format string will likewise yield an empty string.

```
###environment
```
       The environment variables TZ and LC_TIME are used.

```
###conforming to
```
       SVr4, C89, C99.  There are strict inclusions between the set of conversions given in ANSI C (unmarked), those given in the Single UNIX Specification (marked SU), those given in Olson's timezone package (marked TZ), and those given in glibc (marked GNU), except that %+ is not supported in glibc2.  On the other hand glibc2 has several more extensions.  POSIX.1 only refers to ANSI C; POSIX.2 describes under date(1) several extensions that could apply to strftime() as well.  The %F conversion is in C99 and POSIX.1-2001.

       In SUSv2, the %S specifier allowed a range of 00 to 61, to allow for the theoretical possibility of a minute that included a double leap second (there never has been such a minute).

```
###notes
```
   ISO 8601 week dates
       %G, %g, and %V yield values calculated from the week-based year defined by the ISO 8601 standard.  In this system, weeks start on a Monday, and are numbered from 01, for the first week, up to 52 or 53, for the last week.  Week 1 is the first week where four or more days fall within the new year (or, synonymously, week 01 is: the first week of the year that contains a Thursday; or, the week that has 4 January in it).  When three of fewer days of the first calendar week of the new year fall within that year, then the ISO 8601 week-based system counts those days as part of week 53 of the preceding year.  For example, 1 January 2010 is a Friday, meaning that just three days of that calendar week fall in 2010.  Thus, the ISO 8601 week-based system considers these days to be part of week 53 (%V) of the year 2009 (%G); week 01 of ISO 8601 year 2010 starts on Monday, 4 January 2010.

   Glibc notes
       Glibc provides some extensions for conversion specifications.  (These extensions are not specified in POSIX.1-2001, but a few other systems provide similar features.)  Between the '%' character and the conversion specifier character, an optional flag and field width may be specified.  (These precede the E or O modifiers, if present.)

       The following flag characters are permitted:

       _      (underscore) Pad a numeric result string with spaces.

       -      (dash) Do not pad a numeric result string.

       0      Pad a numeric result string with zeros even if the conversion specifier character uses space-padding by default.

       ^      Convert alphabetic characters in result string to upper case.

       #      Swap the case of the result string.  (This flag works only with certain conversion specifier characters, and of these, it is only really useful with %Z.)

       An optional decimal width specifier may follow the (possibly absent) flag.  If the natural size of the field is smaller than this width, then the result string is padded (on the left) to the specified width.

```
###bugs
```
       If the output string would exceed max bytes, errno is not set.  This makes it impossible to distinguish this error case from cases where the format string legitimately produces a zero-length output string.  POSIX.1-2001 does not specify any errno settings for strftime().

       Some buggy versions of gcc(1) complain about the use of %c: warning: `%c' yields only last 2 digits of year in some locales.  Of course programmers are encouraged to use %c, it gives the preferred date and time representation.  One meets all kinds of strange obfuscations to circumvent this gcc(1) problem.  A relatively clean one is to add an intermediate function

           size_t
           my_strftime(char *s, size_t max, const char *fmt,
                       const struct tm *tm)
           {
               return strftime(s, max, fmt, tm);
           }

       Nowadays, gcc(1) provides the -Wno-format-y2k option to prevent the warning, so that the above workaround is no longer required.

```
###example
```
       RFC 2822-compliant date format (with an English locale for %a and %b)

         "%a, %d %b %Y %T %z"

       RFC 822-compliant date format (with an English locale for %a and %b)

         "%a, %d %b %y %T %z"

   Example program
       The program below can be used to experiment with strftime().

       Some examples of the result string produced by the glibc implementation of strftime() are as follows:

           $ ./a.out '%m'
           Result string is "11"
           $ ./a.out '%5m'
           Result string is "00011"
           $ ./a.out '%_5m'
           Result string is "   11"

       Here's the program source:

       #include <time.h>
       #include <stdio.h>
       #include <stdlib.h>

       int
       main(int argc, char *argv[])
       {
           char outstr[200];
           time_t t;
           struct tm *tmp;

           t = time(NULL);
           tmp = localtime(&t);
           if (tmp == NULL) {
               perror("localtime");
               exit(EXIT_FAILURE);
           }

           if (strftime(outstr, sizeof(outstr), argv[1], tmp) == 0) {
               fprintf(stderr, "strftime returned 0");
               exit(EXIT_FAILURE);
           }

           printf("Result string is \"%s\"\n", outstr);
           exit(EXIT_SUCCESS);
       }

```
###see also
```
       date(1), time(2), ctime(3), setlocale(3), sprintf(3), strptime(3)

```
###colophon
```
       This page is part of release 3.54 of the Linux man-pages project.  A description of the project, and information about reporting bugs, can be found at http://www.kernel.org/doc/man-pages/.



```
