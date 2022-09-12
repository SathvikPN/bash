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
