template:base_without_toc.html

from: http://www.thegeekstuff.com/2011/07/bash-for-loop-examples/  

```
from bash commandline:
for f in `ls`; do echo $f; done
for f in *; do echo $f; done


1.Static values for the list after “in” keyword
$ cat for1.sh
i=1
for day in Mon Tue Wed Thu Fri
do
 echo “Weekday $((i++)) : $day”
done

$ ./for1.sh
Weekday 1 : Mon
Weekday 2 : Tue
Weekday 3 : Wed
Weekday 4 : Thu
Weekday 5 : Fri

2. Variable for the list after “in” keyword
$ cat for2.sh
i=1
weekdays=”Mon Tue Wed Thu Fri”
for day in $weekdays
do
 echo “Weekday $((i++)) : $day”
done

$ ./for2.sh
Weekday 1 : Mon
Weekday 2 : Tue
Weekday 3 : Wed
Weekday 4 : Thu
Weekday 5 : Fri

3. Don’t specify the list; get it from the positional parameters
$ cat for3.sh
i=1
for day
do
 echo “Weekday $((i++)) : $day”
done

$ ./for3.sh Mon Tue Wed Thu Fri
Weekday 1 : Mon
Weekday 2 : Tue
Weekday 3 : Wed
Weekday 4 : Thu
Weekday 5 : Fri

4. Unix command output as list values after “in” keyword
$ cat for4.sh
i=1
for username in `awk -F: ‘{print $1}’ /etc/passwd`
do
 echo “Username $((i++)) : $username”
done

$ ./for4.sh
Username 1 : ramesh
Username 2 : john
Username 3 : preeti
Username 4 : jason
..

5. Loop through files and directories in a for loop
$ cat for5.sh
i=1
cd ~
for item in *
do
 echo “Item $((i++)) : $item”
done

$ ./for5.sh
Item 1 : positional-parameters.sh
Item 2 : backup.sh
Item 3 : emp-report.awk
Item 4 : item-list.sed
Item 5 : employee.db
Item 8 : storage
Item 9 : downloads

$ cat for5-1.sh
i=1
for file in /etc/[abcd]*.conf
do
 echo “File $((i++)) : $file”
done

$ ./for5-1.sh
File 1 : /etc/asound.conf
File 2 : /etc/autofs_ldap_auth.conf
File 3 : /etc/cas.conf
File 4 : /etc/cgconfig.conf
File 5 : /etc/cgrules.conf
File 6 : /etc/dracut.conf

6. Break out of the for loop
$ cat for6.sh
i=1
for day in Mon Tue Wed Thu Fri
do
 echo “Weekday $((i++)) : $day”
  if [ $i -eq 3 ]; then
     break;
  fi
done

$ ./for6.sh
Weekday 1 : Mon
Weekday 2 : Tue

7. Continue from the top of the for loop
$ cat for7.sh
i=1
for day in Mon Tue Wed Thu Fri Sat Sun
do
 echo -n “Day $((i++)) : $day”
  if [ $i -eq 7 -o $i -eq 8 ]; then
     echo “ (WEEKEND)”
        continue;
  fi
  echo “ (weekday)”
done

$ ./for7.sh
Day 1 : Mon (weekday)
Day 2 : Tue (weekday)
Day 3 : Wed (weekday)
Day 4 : Thu (weekday)
Day 5 : Fri (weekday)
Day 6 : Sat (WEEKEND)
Day 7 : Sun (WEEKEND)

12. Range of numbers with increments after “in” keyword
$ cat for12.sh
for num in {1..10..2}
do
 echo “Number: $num”
done

$ ./for12.sh
Number: 1
Number: 3
Number: 5
Number: 7
Number: 9
```
