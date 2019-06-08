#!/bin/sh
b=$(pwd)
echo "Finding Discord Cache Directory"
a=$(find / -name [cC]ache 2>/dev/null | grep [dD]iscord)
#a=$(echo $a | sed -e 's/ /\\ /g')
c=''
for i in $a
do
	if [ -z "$c" ] 
	then
		c="$i"
	else
		c="$c\\$i"
	fi
done
if [ -d "$c" ]
then
	file $c/* > $b/dump_results.txt
	echo "Discord Cache directory: $c"
else
	echo "Could not find cache directory"
fi
