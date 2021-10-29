#!/bin/bash
#CPP-Program-Executer Shell Script
ext="o"
if [ -z "$1" ]
then
echo "<file>"
exit 1
else
if g++ $1 -o $1.$ext 2>&1 | grep -q 'No such file'
then
echo "'"$1"'"' No such file'
exit 1
else
chmod +755 $1.$ext
./$1.$ext
fi
fi
