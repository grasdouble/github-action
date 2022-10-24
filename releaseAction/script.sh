#!/bin/bash

previousCommit=$1
lastCommit=$2

modifiedFiles=$(git diff --name-only $previousCommit $lastCommit)

i=1;

while read n; do 
  echo "Name $i. $n"
  echo "--- $n was found at line $i"
  i=$(($i+1)); 
done <<< "$modifiedFiles"