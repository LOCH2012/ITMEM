#!/bin/bash

RED='\033[31m'
NC='\033[0m'
NUM='^[+-]?[0-9]+$'

function sum () {
	[[ -n "$1" && -n "$2" ]] && { [[ "$1" =~ $NUM  && "$2" =~ $NUM ]] && { res=$(( $1 + $2 )); echo "$res"; } || echo -e "${RED}Type error${NC}"; } || echo  -e "${RED}Amount of arguments error${NC}"
}

function sub () {
	[[ -n "$1" && -n "$2" ]] && { [[ "$1" =~ $NUM  && "$2" =~ $NUM ]] && { res=$(( $1 - $2 )); echo "$res"; } || echo -e "${RED}Type error${NC}"; } || echo -e "${RED}Amount of arguments error${NC}"
}

function mul () {
	[[ -n "$1" && -n "$2" ]] && { [[ "$1" =~ $NUM  && "$2" =~ $NUM ]] && { res=$(( $1 * $2 )); echo "$res"; } || echo "${RED}Type error${NC}"; } || echo -e "${RED}Amount of arguments error${NC}"
}

function div () {
	[[ -n "$1" && -n "$2" ]] && { [[ "$2" -ne 0 || "$2" -ne -0 || "$2" -ne +0 ]] && { [[ "$1" =~ $NUM  && "$2" =~ $NUM ]] && { res=$(( $1 / $2 )); echo "$res"; } || echo -e "${RED}Type error${NC}"; } || echo -e "${RED}Dividing on zero${NC}"; } || echo -e "${RED}Amount of arguments error${NC}"
}


if  [[ -n "$1" ]]
then
	case "$1" in
		"sum" ) sum "$2" "$3";;
		"sub" ) sub "$2" "$3";;
		"mul" ) mul "$2" "$3";;
		"div" ) div "$2" "$3";;
		* ) echo -e "${RED}Wrong operation${NC}"
	esac
else echo -e "${RED}You didn't input arguments for calc${NC}"
fi
