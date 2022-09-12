#!/bin/bash
 
count=0

[[ $1 ]] || { echo "Please input a file param"; exit 1; }
 
cat $1 | while read aline
do
      count=$(($count+1))
      echo "[$count]: $aline"
done

