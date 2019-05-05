#!/bin/sh
b=$(pwd)
echo "Finding Discord Cache Directory"
a=$(find / -name [cC]ache 2>/dev/null | grep [dD]iscord)
file $a/* > $b/dump_results.txt
echo "Discord Cache directory: $a"
