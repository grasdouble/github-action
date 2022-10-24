#!/bin/bash

git fetch --tag

previousCommit=$1
lastCommit=$2

versions=$(cat ./release.txt)

while read n; do 
  echo "Name $n"
  if grep -q -w $n <<< $(git tag -l); then
    echo "$n already exist"
  else
    git tag $n
    git push --tag    
  fi
done <<< "$versions"

