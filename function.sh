#!/bin/bash
 
function foo   # or: function foo(), or simply: foo()
{
  [ $# -ne 0 ] || { 
     echo "*** foo: must have at least 1 arg." 
     return 1
  }
  echo "$1"
  echo "$@"
  # "return 0" implicit
}
 
echo "---> call: foo"
if foo; then
  echo success: $?
else
  echo failure: $?
fi
echo
echo '---> call: foo aa bb cc'
if foo aa bb cc; then
  echo success: $?
else
  echo failure: $?
fi
