#!/bin/bash
# Take a file, convert it into a hex array

if [ $# -ne 1 ]; then
  echo "Usage: $0 file_name"
  exit -1
fi

file_name=$1
echo "$file_name converts to:"
echo "{"
hexdump $file_name | sed -e 's/\([0-9a-f]\)\{3,\}//g;s/ /, 0x/g;s/0x, //g' | tr '\n' ' ' | cut -c 3- | rev | cut -b 7- | rev
echo "}"
