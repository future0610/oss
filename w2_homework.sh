#!/bin/bash

line() {
	echo "----------"
}

line
echo "
name :
김경래
"
line

echo "
student id :
2020125004
"
line
dir=$(find /home/kau2 -name w2_homework.txt 2> /dev/null| head -n 1)
if [ ${#dir} -eq 0 ]
then
dir="No such file or directory"
echo "
file path :
$dir

$(line)"
exit
else
#dir=$(find ~ | grep w2_homework.tt | head -n 1)
echo "
file path :
$dir

$(line)"
fi
a=$(wc ${dir})
echo "
line number :
$(for i in ${a}
do
	echo ${i}
	break
done)

$(line)

last line :
$(tail -n 1 ${dir})"
