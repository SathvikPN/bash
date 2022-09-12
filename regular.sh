#!/bin/bash
# above line is shebang.
# the first two bytes in the file, a 16-bit value called the magic number of a file. 
# If the first two characters are #!, this indicates that the file is a text-based script file

# $ chmod +x SOME-SCRIPT.sh          executable by any user
# $ chmod 700 SOME-SCRIPT.sh         executable only by owner

# shell script parameters
# "$*"	"$1 $2 $3..."
# "$@"	"$1" "$2" "$3"...
# number of command line args: "$#"

# path=`pwd`  EQUIVALENT TO  path=$(pwd)

echo   first     second     # barewords allowed
echo  "first     second"    # use quotes to preserve space

year=`date +%Y`        # no spaces allowed around the "=" operator
echo "Year is ${year}" # Double quotes undergo expansion
echo 'Year is ${year}' # No expansion

# numerical strings can be treated numerically inside $(( .. ))
a=$((1+6*3))  # echo "1+6*3" | bc -l 

echo -ne "Tell me: \t" # [-n no_new_line] [-e enable_special_chars]
read x                 # read value into variable x from stdin
read -p "Tell me: " x  # read with a prompt

# display upto 3 decimal precision. (float division)
NUM=22
DEN=7
printf "%.3f \n" $(echo $NUM/$DEN | bc -l)
printf -v num "%05d" 27  # num=00027


# way of assigning a type to a variable
declare -r CONSTANT="cannot be reset"
declare -i num_only=5   # "-i" means act like an integer and evaluate expressions accordingly. chars --> 0
# -u/-l means convert value strings to upper/lower case
declare -u uppercaseval="Hello"  # HELLO
declare -l lowercaseval="Hello"  # hello


# Conditionals---------------------------------------------------------------------------------
# Both `newline` and `;` acts as command separator
# MORE INFO: https://devhints.io/bash#conditionals
if [[ num_only -eq 10 ]]
then
  echo "It's 10"
elif [[ num_only -lt 10 ]] 
then
  echo "Less than 10"
else
  echo "Greater than 10"
fi

# Check if variable set. Else print msg and exit
target=$1
# if condition || Else case
[[ $target ]] || { echo "No param passed"; exit 1; }
# if condition && then case
[[ -d $target ]] && { echo "$target is directory:"; cd $target; ls; }
# echo status=$?    Bash special variable which gives the exit status of a previous command

# only 1,3,5 OK
# x=0;     [ "$x" ] && echo x is true 1; 
# x="";    [ "$x" ] && echo x is true 2; 
# x=" ";   [ "$x" ] && echo x is true 3; 
# unset x; [ "$x" ] && echo x is true 4; 
# x=false; [ "$x" ] && echo x is true 5;


# =, !=                             (lexicographic comparison)
# -eq, -ne, -lt, -le, -gt, -ge      (numerical comparison)

 

