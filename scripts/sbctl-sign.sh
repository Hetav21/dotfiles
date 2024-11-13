#!/bin/bash

# Get the vars that needs to be signed
sbctl_verify=$(sbctl verify)

# Splitting string into array
readarray -d " " -t strarr <<< "$sbctl_verify"

for (( n=0; n < ${#strarr[*]}; n++))
do
# logic of if not already signed then sign
if [ "${strarr[n]}" = "not" ]; then
	sbctl sign -s "${strarr[n - 2]}"
fi
done
