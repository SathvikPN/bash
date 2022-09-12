#!/bin/bash

# a map (associative list) must be declared
# initialisation during declaration is optional
declare -A ages=([john]=12 [joe]=13 [jim]=15)

ages[carla]=44
ages[dave]=22

unset ages[john]

# Retrieve values (Unordered)
echo "${ages[@]}"

# Retrieve keys (Unordered)
echo "${!ages[@]}"

# Iterate over key-values
for key in "${!ages[@]}"; do
  value="${ages[$key]}"
  # process something
done

