#!/bin/sh
b=$(pwd)
echo "Finding Discord Cache Directory"
a=$(find / -name [cC]ache 2>/dev/null | grep [dD]iscord)
cd $a
file * > $b/dump_results.txt
cd $b
echo "Discord Cache directory: $a"
