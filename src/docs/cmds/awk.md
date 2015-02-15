template: base_without_toc.html 
#The examples for awk

```
The examples for awk

# Print first two fields in opposite order:
  awk '{ print $2, $1 }' file


# Print lines longer than 72 characters:
  awk 'length > 72' file
    

# Print length of string in 2nd column
  awk '{print length($2)}' file


# Add up first column, print sum and average:
       { s += $1 }
  END  { print "sum is", s, " average is", s/NR }


# Print fields in reverse order:
  awk '{ for (i = NF; i > 0; --i) print $i }' file


# Print the last line
      {line = $0}
  END {print line}


# Print the total number of lines that contain the word Pat
  /Pat/ {nlines = nlines + 1}
  END {print nlines}


# Print all lines between start/stop pairs:
  awk '/start/, /stop/' file


# Print all lines whose first field is different from previous one:
  awk '$1 != prev { print; prev = $1 }' file


# Print column 3 if column 1 > column 2:
  awk '$1 > $2 {print $3}' file
     

# Print line if column 3 > column 2:
  awk '$3 > $2' file


# Count number of lines where col 3 > col 1
  awk '$3 > $1 {print i + "1"; i++}' file


# Print sequence number and then column 1 of file:
  awk '{print NR, $1}' file


# Print every line after erasing the 2nd field
  awk '{$2 = ""; print}' file


# Print hi 28 times
  yes | head -28 | awk '{ print "hi" }'


# Print hi.0010 to hi.0099 (NOTE IRAF USERS!)
  yes | head -90 | awk '{printf("hi00%2.0f \n", NR+9)}'

# Print out 4 random numbers between 0 and 1
yes | head -4 | awk '{print rand()}'

# Print out 40 random integers modulo 5
yes | head -40 | awk '{print int(100*rand()) % 5}'


# Replace every field by its absolute value
  { for (i = 1; i <= NF; i=i+1) if ($i < 0) $i = -$i print}

# If you have another character that delimits fields, use the -F option
# For example, to print out the phone number for Jones in the following file,
# 000902|Beavis|Theodore|333-242-2222|149092
# 000901|Jones|Bill|532-382-0342|234023
# ...
# type
  awk -F"|" '$2=="Jones"{print $4}' filename



# Some looping commands
# Remove a bunch of print jobs from the queue
  BEGIN{
	for (i=875;i>833;i--){
		printf "lprm -Plw %d\n", i
	} exit
       }


 Formatted printouts are of the form printf( "format\n", value1, value2, ... valueN)
		e.g. printf("howdy %-8s What it is bro. %.2f\n", $1, $2*$3)
	%s = string
	%-8s = 8 character string left justified
 	%.2f = number with 2 places after .
	%6.2f = field 6 chars with 2 chars after .
	\n is newline
	\t is a tab


# Print frequency histogram of column of numbers
$2 <= 0.1 {na=na+1}
($2 > 0.1) && ($2 <= 0.2) {nb = nb+1}
($2 > 0.2) && ($2 <= 0.3) {nc = nc+1}
($2 > 0.3) && ($2 <= 0.4) {nd = nd+1}
($2 > 0.4) && ($2 <= 0.5) {ne = ne+1}
($2 > 0.5) && ($2 <= 0.6) {nf = nf+1}
($2 > 0.6) && ($2 <= 0.7) {ng = ng+1}
($2 > 0.7) && ($2 <= 0.8) {nh = nh+1}
($2 > 0.8) && ($2 <= 0.9) {ni = ni+1}
($2 > 0.9) {nj = nj+1}
END {print na, nb, nc, nd, ne, nf, ng, nh, ni, nj, NR}


# Find maximum and minimum values present in column 1
NR == 1 {m=$1 ; p=$1}
$1 >= m {m = $1}
$1 <= p {p = $1}
END { print "Max = " m, "   Min = " p }

# Example of defining variables, multiple commands on one line
NR == 1 {prev=$4; preva = $1; prevb = $2; n=0; sum=0}
$4 != prev {print preva, prevb, prev, sum/n; n=0; sum=0; prev = $4; preva = $1; prevb = $2}
$4 == prev {n++; sum=sum+$5/$6}
END {print preva, prevb, prev, sum/n}

# Example of defining and using a function, inserting values into an array
# and doing integer arithmetic mod(n). This script finds the number of days
# elapsed since Jan 1, 1901. (from http://www.netlib.org/research/awkbookcode/ch3)
function daynum(y, m, d,    days, i, n)
{   # 1 == Jan 1, 1901
    split("31 28 31 30 31 30 31 31 30 31 30 31", days)
    # 365 days a year, plus one for each leap year
    n = (y-1901) * 365 + int((y-1901)/4)
    if (y % 4 == 0) # leap year from 1901 to 2099
        days[2]++
    for (i = 1; i < m; i++)
        n += days[i]
    return n + d
}
    { print daynum($1, $2, $3) }

# Example of using substrings
# substr($2,9,7) picks out characters 9 thru 15 of column 2
{print "imarith", substr($2,1,7) " - " $3, "out."substr($2,5,3)}
{print "imarith", substr($2,9,7) " - " $3, "out."substr($2,13,3)}
{print "imarith", substr($2,17,7) " - " $3, "out."substr($2,21,3)}
{print "imarith", substr($2,25,7) " - " $3, "out."substr($2,29,3)}

[](http://sparky.rice.edu/~hartigan/awk.html)
```
