for i in "$@"; do
  echo "$i"
done

while [ "$1" ]; do
  echo "$1"
  shift 1  # slide positional arg by 1. after this, original first param is lost. $1 points to new shifted param
done

for ((i=1; i<=10; ++i)); do
  echo $i
done 

# RANGES 1-->50 in steps of 5
for i in {1..50..5}; do
    echo "Welcome $i"
done

# FOREVER -----------------------------------
x=0
while true
do
        echo -n "$x "
        ((x++))  # --> x=$(($x+1))
        sleep 1
done



count=0
while read line; do
  ((++count))
  printf "%2d: %s\n" "$count" "${line#my}"
done < <(grep "pattern" file.txt)
# input redirection to loop using MANUFACTURED DEVICE: <(grep "pattern" file.txt)
echo "$count words processed"

# ERROR -----------------------------------------------------------------------------------
# count variable is being manipulated in a subshell created by the pipe operation 
# so its value cannot be used upon exiting the while loop.

count=0
grep "pattern" file.txt | while read line; do
  ((++count))
  printf "%2d: %s\n" "$count" "${line#my}"
done
echo "$count words processed"

