#!/bin/sh
b=$(pwd)
echo "Finding Discord Cache Directory"
a=$(find / -name [cC]ache 2>/dev/null | grep [dD]iscord)
a=$(echo $a | sed -e 's/ /\\ /g')
file $a/* > $b/dump_results.txt
echo "Discord Cache directory: $a"
