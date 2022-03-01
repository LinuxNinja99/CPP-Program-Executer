#! /bin/bash
# CPP-Program-Executer Shell Script

ext="o" # The extension used to execute program files

if [ -z "$1" ] # Checks if a file is not specified
then
echo "Usage: <cpp-file>" # Echos the usage
exit 1
else
if g++ $1 -o $1.$ext 2>&1 | grep -q 'No such file or directory' # Checks if the file specified exists
then
echo "'"$1"'"' No such file'
exit 1
else
chmod +755 $1.$ext # Makes the file executable
./$1.$ext # Exeutes the file
fi
fi
