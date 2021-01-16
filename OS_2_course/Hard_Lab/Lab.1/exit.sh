#!/bin/bash

#[[ $# -eq 1 ]] && { [[ "$1" -eq 42 ]] && {echo  -e "\033[0;36mThe Answer to the Ultimate Question of Life, the Universe, and Everything\033[0m" exit 42} || {echo "Program finished with exit code $1."} } || { echo "Program finished with exit code 0." exit 0}
if [[ $# -eq 1 ]]
then
	if [[ "$1" -eq 42 ]]
	then
		echo  -e "\033[0;36mThe Answer to the Ultimate Question of Life, the Universe, and Everything\033[0m"
		 exit 42
	else
		echo "Program finished with exit code $1."
		exit $1
	fi
else
	echo  "Program finished with exit code 0."
	exit 0
fi
