template:base_without_toc.html
#csh   
[csh manpage](csh_man.md)  
```
#!/bin/csh -vx
#csh -vx show the command before running to help debug

#just to check syntax
#csh -n $0

#argv
if ($#argv < 2) then
    echo "Sorry, but you entered too few parameters"
    echo "usage:  $0 arg1 arg2
    exit
endif

set arg1 = $1
set arg2 = $2

foreach i ($*)
   echo $i
end


#execute commands
echo "Hello there `whoami`.  How are you today?"
echo "You are currently using `hostname` and the time is `date`"
echo "Your directory is `pwd`"
whoami
hostname
date
pwd


#var
set name = Mark
echo $name
set name = "Mark Meyer" # if the string has space, must use ""
echo $name
# it means set to NULL
 set name = 
 unset name
# get user input
set x = $<  
set current_user = `whoami`


#buildin vars
echo $user      # who am I?
echo $status    # a numeric variable, usually used to retun error codes


#Arithmetic variables
@ i = 2
@ k = ($x - 2) * 4
@ k = $k + 1
@ i--
@ i++

#array
set name = (mark sally kathy tony)
echo $#name    # num of the array
echo $name[1]
echo $name[4]
echo $name[2-3]
echo $name[2-]        # all elements from 2 to the end
echo $name[1-3]
echo $name[$i]
set name = ($name doran)
set name = (doran $name)
set name = ($name[1-2] alfie $name[3-])
shift name  # get rid of the frist element of the array
shift #if no argument is given, it will get rid of argv

#Expressions and operators
==        equal     (either strings or numbers)
!=        not equal     (either strings or numbers)
=~        string match
!~        string mismatch
<=        numerical less than or equal to
>=        numerical greater than or equal to
>         numerical greater than
<         numerical less than

# check file 
-e file           file merely exists (may be protected from user)
-r file           file exists and is readable by user
-w file           file is writable by user
-x file           file is executable by user
-o file           file is owned by user
-z file           file has size 0
-f file           file is an ordinary file
-d file           file is a directory

!   -- negate                 
&&  -- logical and
||  -- logical or

#if-else
# run cmd as if expression
if ({grep -s junk $1}) then  
   echo "We found junk in file $1"
endif
# check if the var is defined
if ($?dirname) then 
   ls $dirname
endif

if (-e somefile) then
  grep $1 somefile
else
   echo "Grievous error!  Database file does not exist".
endif

#foreach
foreach i (*)
    if (-f $i) then
      echo "============= $i ==================="
      head $i
    endif
    if (-d $i) then
        (cd $i; headers)
    endif
end


#while
while ($#argv > 0)
    grep $something $argv[1]
end

@ n = 5
while ($n) 
    # do something
    @ n--
end

#switch-case
switch ($argv[$i])
case quit:
   break        # leave the switch statement
   case list:
       ls
       breaksw
    case delete:
    case erase:
        @ k = $i + 1
        rm $argv[$k]
        breaksw
endsw


#here document
grep $i <<HERE
John Doe   101 Surrey Lane    London, UK    5E7 J2K
Angela Langsbury   99 Knightsbridge, Apt. K4     Liverpool
John Major  10 Downing Street  London
HERE

cat > tempdata <<ENDOFDATA
53.3 94.3 67.1
48.3 01.3 99.9
42.1 48.6 92.8
ENDOFDATA

exit 0
```
