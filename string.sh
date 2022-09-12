#!/bin/bash
 
str="abcdefghijkl"
 
printf "%s\t\t%s\n" '$str'       "$str"
printf "%s\t\t%s\n" '${#str}'    "${#str}"     # string length
printf "%s\t%s\n"   '${str:0:6}' "${str:0:6}"  # substring starting at 0 of length 6
printf "%s\t%s\n"   '${str:8}'   "${str:8}"    # substring starting at position 8
echo "----------------------------------"
 
file="/home/rkline/bin/test.cpp"
 
printf "%s\t\t%s\n"  '$file'          "$file"
printf "%s\t%s\n"    '${file#/*/}'    "${file#/*/}"   # remove mimimal top match to /*/
printf "%s\t%s\n"    '${file##/*/}'   "${file##/*/}"  # remove maximal top match to /*/
 
printf "%s\t%s\n"    '${file%.cpp}'   "${file%.cpp}"  # remove bottom .cpp match 
echo "----------------------------------"
 
relpath=${file#/}
 
printf "%s\t%s %s\n" '${file#/}'      "$relpath"        ' = relpath'
printf "%s\t%s\n"    '${relpath%/*}'  "${relpath%/*}"    # remove mimimal bottom match to /*
printf "%s\t%s\n"    '${relpath%%/*}' "${relpath%%/*}"   # remove maximal bottom match to /*
