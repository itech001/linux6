

[perl tutorial](http://linuxconfig.org/perl-programming-tutorial)

1. Using The Perl interpreter
1.1. Find Perl Interpreter
which perl 
Find Perl Interpreter

1.2. Implicit Execution
NOTE:Every script starts with shebang:"#!" which is not read as a comment. First line is also a place where you put your interpreter which in this case is perl.

#!/usr/bin/perl print "Perl Programming\n"; 
Make Perl Script Executable:

chmod +x perl_script.pl 
perl implicit execution

1.3. Explicit Execution
print "Perl Programming\n"; 
Make Perl Script Executable:

chmod +x perl_script.pl 
Perl Explicit Execution

2. Simple Perl script
#!/usr/bin/perl # print "Perl Programming Tutorial\n"; 
Simple perl script example

3. Current path to Perl modules
List all available current paths to perl modules:

perl -e 'print "@INC" . "\n";' 
Current path to Perl modules

4. Variables
$ - Scalar Variable
% - Hash Variable
@ - Array
& - Subroutines

4.1. Using Perl default variable $_
#!/usr/bin/perl
$_ = "Perl Programming default variable.\n";
print; 
Perl default variable $_

4.2. Defined Function
#!/usr/bin/perl

# declare perl scalar do but not define value
$perl_scalar;
#we can use conditional operator '?:' to test perl defined funtion
$variable = defined($perl_scalar) ? "Variable \$perl_scalar is Defined!"
 : "Variable \$perl_scalar is NOT Defined!";
print $variable."\n";
# declare perl scalar with value
$perl_scalar="perl";
$variable = defined($perl_scalar) ? "Variable \$perl_scalar is Defined!" 
: "Variable \$perl_scalar is NOT Defined!";
print $variable."\n"; 
Perl Defined Function

4.3. Scalar variable
#!/usr/bin/perl
#Scalars hold just single data type: string, number or perl reference
#Scalars definition in Perl
$scalar_number = -5; 
$scalar_string1 = "In PERL Scalars are always referenced with \x24 in front of each variable name. ";
$scalar_string2 = "5 items";
#Undescore can be use for big numbers 
$scalar_milion = 1_000_000;
#Print scalar values
print $scalar_number."\n";
print $scalar_string1."\n";
print $scalar_string2."\n";
print $scalar_milion."\n";
#perl scalar addition
print $scalar_number + $scalar_milion."\n"; 
Perl Scalar variable example

4.3.1. Single-Quoted Strings
#!/usr/bin/perl
 
#Single-Quoted scalar strings
$scalar_string1='perl';
print "String 1: ".$scalar_string1."\n";
$scalar_string2='#!/usr/bin/perl';
print "String 2: ".$scalar_string2."\n";
$scalar_string3='Perl
Programming
Tutorial';
print "String 3: ".$scalar_string3."\n";
$scalar_string4='Perl\n';
print "String 4: ".$scalar_string4."\n";
$scalar_string5='\'\'\\';
print "String 5: ".$scalar_string5."\n";
$scalar_string6='';
print "String 6: ".$scalar_string6."\n";
$scalar_string7='I\'m reading Perl Programming Tutorial';
print "String 7: ".$scalar_string7."\n"; 
Single-Quoted Strings in perl

4.3.2. Double-Quoted Strings
#!/usr/bin/perl
#Double-Quoted scalar strings
$scalar_string1="perl";
print "String 1: ".$scalar_string1."\n";
$scalar_string2="#!/usr/bin/perl";
print "String 2: ".$scalar_string2."\n";
$scalar_string3="Perl
Programming
Tutorial";
print "String 3: ".$scalar_string3."\n";
$scalar_string4="Perl\n";
print "String 4: ".$scalar_string4."\n";
$scalar_string5="\'\'\\\"";
print "String 5: ".$scalar_string5."\n";
$scalar_string6="";
print "String 6: ".$scalar_string6."\n";
# add "!" ASCII character in octal form !=041
$scalar_string7="I\'m reading Perl Programming Tutorial \041";
print "String 7: ".$scalar_string7."\n";
# add "@" ASCII character in hexadecimal form @=40
$scalar_string8="Any feedback about this \uperl \uprogramming
 \ututorial to: web\x40\lL\LINUXCONFIG.ORG\E";
print "String 8: ".$scalar_string8."\n"; 
Double-Quoted Strings in Perl

4.3.3. String Operators
#!/usr/bin/perl

#Scalar string Operators
$scalar_string1="pe"."rl";
print "String 1: ".$scalar_string1."\n";
$scalar_string2="Perl Programming Tutorial " x (1+1);
print "String 2: ".$scalar_string2."\n";
$scalar_string3="3"."\ttabs" x 3;
print "String 3: ".$scalar_string3."\n";
$scalar_string4="Perl\x20".'Programming '."Tutorial";
print "String 4: ".$scalar_string4."\n";
$scalar_string5=9x5;
print "String 5: ".$scalar_string5."\n"; 
Perl String Operators

4.3.4. Non-Decimal Integers
#!/usr/bin/perl
 
#perl binary integer
$hash_binary_integer = 0b10000;
#perl octal integer
$hash_octal_integer = 020;
#perl hexadecimal integer
$hash_hexadecimal_integer1 = 0x10;
$hash_hexadecimal_integer2 = 0x124c_78_aa;
 
print $hash_octal_integer."\n";
print $hash_binary_integer."\n";
print $hash_hexadecimal_integer1."\n";
print $hash_hexadecimal_integer2."\n"; 
Non-Decimal Integers

4.3.5. Scalar Constant Variable
#!/usr/bin/perl
 
$ordinary_scalar = 5;
$ordinary_scalar = 10; 

print $ordinary_scalar."\n";

#perl constant declaration
*SCALAR_CONSTANT = 5;
$SCALAR_CONSTANT = 10; 
Perl Scalar Constant Variable

4.3.6. String And Numeric comparison Operators
Comparison	String	Numeric
Equal	eq	==
Not Equal	ne	!=
Less than	lt	<
Greater than	gt	>
Less than or equal	le	<=
Greater than or equal	ge	>=
#!/usr/bin/perl
# String comparison
if ( 'Perl' eq 'perl' ) {
print "TRUE\n";
} else {
print "FALSE\n";
}

# Numeric comparison
if ( '2.4' != '2.6' ) {
print "TRUE\n";
} else {
print "FALSE\n";
} 
String And Numeric comparison Operators

4.4. Lists
#!/usr/bin/perl

#Lists definition in Perl
print ("Perl ","programming ","Tutorial","\n"); 
Perl Lists

4.5. Arrays
4.5.1. Create and print array
#!/usr/bin/perl
 
#CREATE AN ARRAY
@perl_array1 = qw(Perl Programming Tutorial );
@perl_array2 = ("Perl ", "Programing ", "Tutorial", "\n");
@perl_array3 = (1 .. 3);
$perl_array4[0] = "Perl ";
$perl_array4[1] = "Programming ";
$perl_array4[2] = "Tutorial";
$perl_array4[50] = "\n";

#ADD ELEMENTS TO AN ARRAY
$perl_array1[3] = "\n";

#PRINT ARRAY
print @perl_array1;
print @perl_array2;
print @perl_array3;
print $perl_array1[3];
print @perl_array4;
# What index has a last element of an array
print "Last element of perl_array4 has index: " .  $#perl_array4 ."\n"; 
Create and print perl array

4.5.2. Push and Pop Arrays
#!/usr/bin/perl

# CREATE AN ARRAY
@perl_array = (1 .. 3);

# PUSH NEW ELEMENT TO THE AND OF AN ARRAY
push(@perl_array, "\n");

# PRINT ARRAY
print  @perl_array;

# POP LAST ELEMENT FROM AN ARRAY
$perl_scalar = pop(@perl_array);
print  @perl_array;

# PRINT NEW LINE
print $perl_scalar; 
Push and Pop Arrays in Perl

4.5.3. Determine The Length of an Array
#!/usr/bin/perl
 
#CREATE AN ARRAY
@perl_array = (1 .. 3);
$number_of_elements = @perl_array;
print "\@perl_array has: " . $number_of_elements  . " elements.\n";
print "\@perl_array has: " . scalar(@perl_array)  . " elements.\n"; 
Determine The Length of an Array in Perl

4.5.4. Merge and Append Arrrays
#!/usr/bin/perl
 
#CREATE AN ARRAY

@perl_array1 = (".\n", "easy", "very ") ;
@perl_array2 = ("is ", "Programming ", "Perl ");
@perl_array3 = (@perl_array1, @perl_array2);
# REVERSING ELEMENTS 
print reverse @perl_array3; 
Merge and Append Arrrays in Perl

4.5.5. Sort Arrays
#!/usr/bin/perl
 
#CREATE AN ARRAY
 
@perl_array = (3, 4, 1, 2);
@sorted_array1 = sort @perl_array;
@sorted_array2 = sort {$b <=> $a} @perl_array;
 
print "@sorted_array1 \n";
print "@sorted_array2 \n"; 
Sort Arrays in Perl

4.5.6. Delete Element from an Array
#!/usr/bin/perl
 
#CREATE AN ARRAY
@perl_array = (1, 2, 3, 4);
# CHECK IF THE ARRAY ELEMENT EXISTS
if (exists($perl_array[2])) {
	delete $perl_array[2];
} else {
	print "Array element is mising!\n"
}
print @perl_array, "\n"; 
Delete Element from an Array in Perl

4.6. Hash
4.6.1. Create Hash
#!/usr/bin/perl
 
# CREATE HASH
%perl_hash = ( 
	browser => iceweasel,
# you can also use comma instead of arrow operator
	os , linux,
);
# PRINT HASH ELEMENT
print "$perl_hash{'browser'}\n"; 
Create Hash in Perl

4.6.2. Add Element to a Hash
#!/usr/bin/perl

# CREATE HASH
%perl_hash = ( 
	browser => iceweasel,
# you can also use comma instead of arrow operator
	os , linux,
);
# PRINT HASH ELEMENT
print "$perl_hash{'browser'}\n";

# ADD ELEMENTS TO A HASH
%perl_hash = (%perl_hash, programming, perl);

# PRINT ALL ELEMENTS
print join(" ", %perl_hash). "\n"; 
Add Element to a Hash

4.6.3. Print Hash
#!/usr/bin/perl

# CREATE HASH
%perl_hash = qw( 
	ssh 22
	http 80
	https 443
	telnet 23
	postgres 5432
);
 
while (($hash_key, $hash_value) = each %perl_hash ){
	print "$hash_key uses port $hash_value\n";
} 
Print Hash in Perl

4.6.4. Merging Hashes
#!/usr/bin/perl
 
# CREATE HASH
%perl_hash1 = qw( 
	Debian deb
);
%perl_hash2 = qw( 
	RedHat rpm
);
#MERGE HASHES
%perl_hash3 = (%perl_hash1, %perl_hash2);

while (($hash_key, $hash_value) = each %perl_hash3 ){
	print "$hash_key: $hash_value\n";
} 
Merging Hashes in perl

5. Perl Regular Expressions
5.1. Regular Expressions and Special Characters
\D	Matches non-digit character	\d	Matches digit character	\E	End case modification
\e	escape	\f	Form feed	\L	Matches lowercase until \E found
\l	Next character lower case	\n	New line	\r	Return
\S	Match a non-white space character	\s	Match a white space character	\t	Match tab
\U	Match upper case until \E found	\u	Next character uppercase	\W	Match non-word
\w	Match word	\Q	Quote pattern metacharacter until \E found
5.2. Match Characters
#!/usr/bin/perl 
 
foreach(@ARGV) {
# Regex Match lower case and upper case character "p" ( ignores alphabetic case )
	if (m/p/i) {$p1++;}
# Regex Match lower case character "p" only
	if (m/p/) {$p2++;}
# Regex Match two characters "ex" and ignore alphabetic case
	if (m/ex/i) {$ex++;}
}
print "p1=$p1\np2=$p2\nex=$ex\n"; 
Perl Regular Expressions - Character Match

5.3. Substitution
Sample File: perl_regex.txt

# Perl Regular Expressions #
# Character Substitute # 
#!/usr/bin/perl
 
open (FILEHANDLE, $ARGV[0]) || die "Problems opening file";

@file=;

foreach(@file) {
# Substitute "#" with "$" and work globally for each instance found
# NOTE: all metcharacters needs to bu escaped with "\" like in 
# this case "$" is escaped "\$" to be read literally
# Meta characters are: \ | {  [ ( ) ^ $ * + ? .
	s/\#/\$/g;
# Substitute upper case "E" with lower case "e"
	s/E/e/;
# Substitute first match of " " with "_"
 	s/\s/\_/;
# Substitute first match of " " with "\"
# Note: Is your choice which substitute form you use s/// or s||| 
	s|\s|\\|;
	print;
} 
Perl Regular Expressions - Substitution

5.3.1. Substitution with evaluation
In case a string is to be substituted with the output of a function call - rather than static text we can use the evaluation modifier (/e) which evaluates the right hand side as code, rather than a string.

#!/usr/bin/perl
 
my $text_eval = my $text_noeval = "Here is some texxxt.\n";
$text_noeval =~ s/(xx+)/'(x^'.length($1).')'/;
print "Text without evaluation:".$text_noeval."\n";
$text_eval =~ s/(xx+)/'(x^'.length($1).')'/e;
print "Text with evaluation:".$text_eval."\n"; 
linuxconfig.org:~$ ./subst_eval.pl
Text without evaluation:Here is some te'(x^'.length(xxx).')'t.

Text with evaluation:Here is some te(x^3)t. 
5.4. Translation
#!/usr/bin/perl
 
$string="uSe REgular Expression claSSes TO tRanslatE FroM upPEr case tO lOwER caSe chArActErs";
# Use perl to convert string characters from upper case to lower case
$string =~ tr/A-Z/a-z/;
print "$string\n";
# Use perl to convert string characters from lower case to upper case
$string =~ tr/a-z/A-Z/;
print "$string\n"; 
Perl Translation Convert Character Case

5.5. Classes
A regular expression surrounded in square brackets is called a character class which matches any single character described by the regular expression.

#!/usr/bin/perl 
foreach(@ARGV) {
# Substitute all characters "except ^" upper case characters and character "e" with "#"  
	s/[^A-Ze]/\#/g;	print;
}
print "\n"; 
Perl Regular Expressions - Classes

5.6. Quantifiers
#!/usr/bin/perl
 
@array1 = @ARGV;
@array2 = @ARGV;

print "\@array1 = ";
foreach(@array1) {
# Substitute at least 3 "s" characters
	s/s{3,}/SS/g;	print;
} 
print "\n\@array2 = ";
foreach(@array2) {
# Substitute one or more "s" characters
	s/s+/S/g;	print;
}
print "\n"; 
Perl Regular Expressions - Quantifiers

5.7. Assertion
#!/usr/bin/perl 
 
foreach(@ARGV) {
# Substitute character "a" and the end of the string with "$"
	s/a$/\$/g;
# Substitute character "a" and the beginning of the string with "^"
	s/^a/\^/g;	
	print;
} 
print "\n"; 
Perl Regular Expressions - Assertion

5.8. Multiple Match
#!/usr/bin/perl
# /g match globally
$text="We want to improve your Perl Regular Expressions skills.";
print "Number of Substitutions made: " . ($text =~ s/e/E/);
print "\n$text\n";

$text="We want to improve your Perl Regular Expressions skills.";
print "Number of Substitutions made: " . ($text =~ s/e/E/g);
print "\n$text\n"; 
Multiple Match with regular Expressions

5.9. Regular Expression Extention
(?=)	Matches If would match next
(?!)	Matches If would NOT match next
(?<=)	Matches If would match just before
(?)	Matches If would NOT match just before
(?#)	= Comment
#!/usr/bin/perl
 
$_="We want you to improve your Perl Regular Expressions skills.";
# Replace space with "#" if it is followed by "to"
s/\s(?=to)/#/g;
print "$_\n";
# Replace space with "_" if it is NOT followed by "s"
s/\s(?!s)/_/g;
print "$_\n"; 
Regular Expression Extention

5.10. Grouping
#!/usr/bin/perl 
  
$a=$ARGV[0]; 
 
if ($a =~ /(.*)@(.*)\.(.*)/) { 
print "$1\n$2\n$3\n"; 
} 
Perl Regular Expressions - Grouping

6. Perl Subroutines
6.1. Create Simple Perl Subroutine
#!/usr/bin/perl
# Lets create subroutine which we can use to check for presence of number in the string.
# Name of the subroutine is numbers_in_string
sub numbers_in_string
{
	if ($mystring =~ /[0-9]/) {
		print "Supplied string contains numbers!\n";
	} else {
		print "Supplied string does NOT contain numbers!\n";
	}
 }
# declare global scope variable which means that this variable can be accessed from anywhere in this code.
$mystring="number one";
# perl subroutine calls
numbers_in_string;
$mystring="number 1";
# perl subroutine calls
numbers_in_string;
numbers_in_string($mystring); 
Example of simple perl subroutine

6.2. Pass and Return Values
#!/usr/bin/perl
 
sub perl_addition {
# all variable passed to the perl subroutines are stored in special @_ variable
	($number1, $number2) = @_;
# return the result
return  $number1 + $number2 ;
}
 # print result by calling perl_addition() subroutine
print "Number1 + Number2 = " . perl_addition(4, 2) . "\n"; 
passing and returning values to and from perl subroutines

7. Perl operators
7.1. Precedence of Perl operators
Operators	Associativity
Parentheses and List operators	left
->	left
++ --	n/a
**	Right
! ~ \ unary+ unary-	left
=~ !~	left
* / % x	left
+ - .	left
<< >>	left
Named unary operators and file test operators	n/a
< > <+ >+ lt gt le ge	n/a
== != <=> eq ne cmp	n/a
&	left
| ^	left
&&	left
||	left
.. ...	n/a
?:	right
=+= -+ *=	right
, =>	left
Rightward List operators	n/a
not	right
and	left
or xor	left
#!/usr/bin/perl
 
print 1 + 2 * 3 + 4 . "\n";
print ((1 + 2) * (3 + 4));
print "\n";
# Print as a function or operator
print ((5 + 5 ) * 5); print "\n";
print (5 + 5 ) * 5; print "\n";
# Use unary + operator to tell perl
# that we are not making print() function call
# but rather using parentheses as a precedence
print +(5 + 5 ) * 5; print "\n"; 
Precedence of Perl operators

7.2. Arrow operator
#!/usr/bin/perl
 
$perl_hash{browser} = iceweasel;
$perl_hash_reference= \%perl_hash;
print $perl_hash_reference->{browser} . "\n"; 
Arrow operator in perl

7.3. Increment and Decrement operators
#!/usr/bin/perl
 
$perl_scalar1 = 1;
$perl_scalar2 = 2;
$perl_scalar3 = 'p';
$perl_scalar4 = 'PERL';

print $perl_scalar1++ . " , ";
print $perl_scalar1 . " , ";
print ++$perl_scalar3 . " , ";
print ++$perl_scalar4 . "\n"; 
Increment and Decrement operators in perl

8. Loops
8.1. Perl for loop
#!/usr/bin/perl

# Definition of perl for loop
for($for_loop=0;$for_loop<=4;$for_loop++) {
       print "for loop value is:".$for_loop."\n";
       } 
Perl for loop

8.2. Perl while loop
#!/usr/bin/perl
#

$while_loop=5;

# Definition of perl while loop
while ($while_loop>=0) {
       print "while loop value is:".$while_loop."\n";
       $while_loop--;
       } 
Perl while loop

8.3. Perl until loop
#!/usr/bin/perl
#
$until_loop=5;

# Definition of perl until loop
until ($until_loop==0) {
       print "until loop value is:".$until_loop."\n";
       $until_loop--;
       } 
Perl until loop

8.4. Perl foreach loop
#!/usr/bin/perl
 
#Declare array

@foreach_loop = (" Tutorial\n" , " Scripting" , "Perl" ) ;
foreach $count (reverse @foreach_loop) {
    print $count;
    } 
Perl foreach loop

9. Getting User Input
#!/usr/bin/perl

# getting user input
$user_input = ; # also possible to use just (<>)
print $user_input;
# clear user input and remove new line character
chomp($user_input);
print $user_input ." "; 
Getting User Input in perl [[Image:perl_user_input.gif]]

9.1. Reading Command Line Arguments
#!/usr/bin/perl
# reading command line arguments with perl
# @ARGV is Perl build-in array which
# contains all arguments passed during command line execution
print join(" ", @ARGV);
 
print "\n" . $ARGV[0] . $ARGV[1] . $ARGV[2] . $ARGV[3] . $ARGV[4] . $ARGV[5] . "\n";  
Reading Command Line Arguments in perl

10. File Handling
10.1. Read File Passed from the Command line
#!/usr/bin/perl
 
# read all files passed by command line as a arguments.
while (<>) {
    print;
} 
Read File Passed from the Command line in perl

10.2. Open File for Read and Write
#!/usr/bin/perl
 
# Create filehandle for write called WFILEHANDLE for file perl.txt
# if the file does not exists it will be created. 
open (WFILEHANDLE, ">perl.txt") or die ("Cannot open perl.txt .\n");

# Insert data to perl.txt
print WFILEHANDLE "Perl Programming Tutorial";

#Close filehandle.
close (WFILEHANDLE);

# Create filehandle for read called RFILEHANDLE for file perl.txt
open (RFILEHANDLE, "

# read file and print to 
while () {
print;
}
print "\n"; 
Open File for Read and Write in perl

10.3. Determine Number of Lines in a File
#!/usr/bin/perl
 
open(FILEHANDLE, $ARGV[0]) or die ("Could not open a given file");

@lines=;
print "Number of Lines in the file: " . scalar(@lines) . "\n";
# Perl can Print particular line from the file 
print "Line number 23: ". $lines[22] . "/n"; 
Determine Number of Lines in a File with perl

10.4. Determine Number of Characters in a File
#!/usr/bin/perl
 
open(FILEHANDLE, $ARGV[0]) or die ("Could not open a given file");
my $input =0;
while (defined($char = getc FILEHANDLE)) {
$input++;
}
print "Number of characters: " . $input . "\n";
close FILEHANDLE; 
Determine Number of Characters in a File with perl

10.5. Seek position within a File
#!/usr/bin/perl
 
# seek is helpful perl function, especially with huge files, where sequential access
# may be time consuming and may require lots of processing power. Seek provides quick random access.
# 0 -set the new position in bytes to POSITION
# 1 -set the current position plus POSITION
# 2 -set the new position EOF plus POSITION (often negative)
# use seek function to set position 20000 bytes

open(FILEHANDLE, $ARGV[0]) or die ("Could not open a given file !!");
seek FILEHANDLE, 20000,0;
# use perl tell function to check file position.
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 20000,0 \n";
# Add another 36 bytes
seek FILEHANDLE, 36,1;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 36,1 \n";
# Return position to byte 10
seek FILEHANDLE, 10,0;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 10,0 \n";
# Set position to the end of the file (eof)
seek FILEHANDLE, 0,2;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 0,2 \n";

close FILEHANDLE; 
Seek position within a File with perl

11. Simple Perl Arithmetics
#!/usr/bin/perl
 
#perl addition
$addition=5+5.3;
print "Perl Addition:\n5 + 5 = ".$addition."\n";

#perl subtraction
$subtraction=100-23;
print "Perl Subtraction:\n100 - 23 = ".$subtraction."\n";

#perl multiplication
$multiplication=3*9;
print "Perl Multiplication:\n3 x 9 = ".$multiplication."\n";

#perl division
$division=45/5;
print "Perl Division:\n45 : 5 = ".$division."\n";

#perl modulus
$modulus=10%3;
print "Perl Modulus:\n10 % 3 = ".$modulus."\n";
 
#perl exponential
$exponential=3**4;
print "Perl Exponential:\n3 ** 4 = ".$exponential."\n"; 
Simple Perl Arithmetics

12. Perl Octal, Hexadecimal, And Decimal Conversions
#!/usr/bin/perl
 
print "\n";

#perl  bin to dec
#PERL CONVERSION FROM BINARY TO DECIMAL
$decimal_number = 0b10010110;
print "Binary number 10010110 is " . $decimal_number . " in decimal.\n";

#perl  dec to bin
#PERL CONVERSION FROM DECIMAL TO BINARY
$decimal_number = 23451;
$binary_number = unpack("B32", pack("N", $decimal_number));
print "Decimal number " . $decimal_number . " is " . $binary_number .
" in binary.\n\n";

#perl  oct to dec
#PERL CONVERSION FROM OCTAL TO DECIMAL
$octal_number = 224;
$decimal_number =  oct($octal_number);
print "Octal number " . $octal_number . " is " . $decimal_number . "
in decimal.\n";
#perl  dec to oct
#PERL CONVERSION FROM DECIMAL TO OCTAL
$decimal_number = 8;
$octal_number = sprintf("%o",$decimal_number);
print "Decimal number " . $decimal_number . " is " . $octal_number . "
in octal.\n\n";

#perl  hex to dec
#PERL CONVERSION FROM HEXADECIMAL TO DECIMAL
$hexadecimal_number = "F1";
$decimal_number =  hex($hexadecimal_number);
print "Hexadecimal number " . $hexadecimal_number . " is " .
$decimal_number . " in decimal.\n";
 
#perl  dec to hex
#PERL CONVERSION FROM DECIMAL TO HEXADECIMAL
$decimal_number= 333;
$hexadecimal_number = sprintf("%x", $decimal_number);
print "Decimal number " . $decimal_number . " is " .
$hexadecimal_number . " in hexadecimal.\n\n"; 
Perl Octal, Hexadecimal, And Decimal Conversions

13. Create Perl Package
Here is an example of simple perl package: perl_package.pm

# DECLARE PERL PACKAGE
package perl_package;

BEGIN {
# INITIALIZATION CODE
}

# DEFINE PERL PACKAGE
sub package_subroutine {
print "Hello from Perl Package.\n";
}
# TO INDICATE THAT PACKAGE LOADS OK
return 1;

END {
# CLEAN UP CODE
}  
With the following script we can call package subroutine "package_subroutine": test_package.pl

#!/usr/bin/perl
 
use perl_package;
 
perl_package::package_subroutine(); 
Example of very simple perl package

14. Databases connections
14.1. Perl MySQL database connection
#!/usr/bin/perl
#
use Mysql;

$mysql_host = "perl_box";
$mysql_database = "perl_connect";
$mysql_user = "perl_programmer";
$mysql_password = "perl";

$perl_mysql_connect = Mysql->connect($mysql_host, $mysql_database,
$mysql_user, $mysql_password);

if ($perl_mysql_connect) {
       print "Perl have created connection to MySQL database!\n"
} else {
       print "Perl could not create connection to MySQL database!\n"
} 

14.2. Perl PostgreSQL database connection
#!/usr/bin/perl
 
#load perl postgresql module
use DBI;
 
$postgresql_database=perl_connect;
$postgresql_user=perl_programmer;
$postgresql_password=perl;
$postgresql_host=perl_box;

# connect to perl to postgresql database
my $perl_postgresql =
DBI->connect("DBI:Pg:dbname=$postgresql_database;host=$postgresql_host",
"$postgresql_user", "$postgresql_password");

if($perl_postgresql) {
       print "Perl established connection to PostgreSQL database\n";
} 

15. Object Oriented Perl
There are many materials focussed on object oriented Perl from the introductory PerlBoot to the more comprehensive PerlToot. In this section are topics or viewpoints which couldn't be found elsewhere.

15.1. Template of get/set methods
Below is an example of a script using an object with two pieces of data with a method to set/get each one: varName and varAge.

linuxconfig:~/learn_perl/oo$ $ cat test.pl
#!/usr/bin/perl
use strict;
use warnings;
use Person;

my $p = Person->new();

$p->varName('Anna');
$p->varAge(30);

print $p->varName." is ".$p->varAge." years old.\n"; 
Running this function behaves as expected:

linuxconfig:~/learn_perl/oo$ ./test.pl
Anna is 30 years old. 
The obvious implementation of this object would be as follows:

linuxconfig:~/learn_perl/oo$ cat Person.pm
package Person;
 
use strict;
use warnings;

sub new
{
    my $class = shift;

    my $self = {}; bless($self, $class);
    return $self;
}

sub varName
{
        my ($self, $name) = @_;
        if (defined($name)) {
                $self->{NAME} = $name;
        }
        return  $self->{NAME};
};

sub varAge
{
        my ($self, $age) = @_;
        if (defined($age)) {
                $self->{AGE} = $age;
        }
        return  $self->{AGE};
};

1; 

The main thing to observe in the code above is that the varName and varAge are identical in functionality. In the example below, we implement both of these methods using a single function template.

linuxconfig:~/learn_perl/oo$ cat Person.pm
package Person;
 
use strict;
use warnings;

sub new
{
    my $class = shift;

    my $self = {}; bless($self, $class);
    return $self;
}

my @vars = qw(Name Age);
foreach my $var (@vars) {
    no strict 'refs'; # permit the symbolic references to varName, varAge
    *{"var".$var} =
                sub
        {
            my ($self, $stuff) = @_;
            if (defined($stuff)) {
                $self->{uc($var)} = $stuff; # change Name to NAME
            }
            return  $self->{uc($var)};
        };
}

1; 
