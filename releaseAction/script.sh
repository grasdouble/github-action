#!/bin/bash

previousCommit=$1
lastCommit=$2

modifiedFiles=$(git diff --name-only $previousCommit $lastCommit)

i=1;

while read n; do 
  echo "Name $i. $n"
  echo "--- $n was found at line $i"
  readarray -d " " -t filePath <<< "$n"
  echo "--- $filePath[#strarr[*]-1]"
  i=$(($i+1)); 
done <<< "$modifiedFiles"
