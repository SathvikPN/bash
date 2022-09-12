#!/bin/bash

# Ultimate Bash Array Tutorial: https://www.thegeekstuff.com/2010/06/bash-array-tutorial/

# explicit declaration (optional)
declare -a myList

myList=( aa bb cc )

echo "First elem: ${myList[2]}" 
echo "All elem: ${myList[@]}"

unset myList[2] # erase

for elem in "${myList[@]}"; do
  echo "$elem"
done

# Accessing a list by positions can be problematic as unassigned positions are simply ignored
# myList=( [9]="A" [21]=B 'C' )  # Non-intuitive init possible
for idx in "${!myList[@]}"
do 
  echo "${idx}: ${myList[idx]}"
done
# 2: B
# 3: C
# 9: A


myList=( "${myList[@]}" "$appended_elem" )       # append
myList=( "${myList[@]}" "${anotherList[@]}" )   # concatenate



# USUALS
Fruits=('Apple' 'Banana' 'Orange')
Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"

echo ${Fruits[0]}           # Element #0
echo ${Fruits[-1]}          # Last element
echo ${Fruits[@]}           # All elements, space-separated
echo ${#Fruits[@]}          # Number of elements
echo ${#Fruits}             # String length of the 1st element
echo ${#Fruits[3]}          # String length of the Nth element
echo ${Fruits[@]:3:2}       # Range (from position 3, length 2)
echo ${!Fruits[@]}          # Keys of all elements, space-separated
