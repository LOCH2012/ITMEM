#!/bin/bash

mods=$(pwd)/modules
RED='\033[31m'
NC='\033[0m'

ErrorParametersAmount()
{
echo  -e "${RED}Wrong parametrs amount!${NC}"
}

ErrorWrongCommand()
{
echo -e "${RED}Command $1 does not exist!${NC}"
}

CheckParametersAmount()
{
if [[ $1 -ne $2 ]]
	then ErrorParametersAmount
	echo -e "You entered $1 parametrs, but needed $2."
	exit 1
fi
}

ErrorAccess()
{
echo -e "${RED}No access to $@ script${NC}"
exit 1
}
CalcFunc()
{
if ! [[ -e ./calc.bash ]]
then
	ErrorAccess Search
fi
CheckParametersAmount $# 4
shift
sh ./calc.bash "$@"
}

SearchFunc()
{
if ! [[ -e ./search.bash ]]
then
	ErrorAccess Search
fi
CheckParametersAmount $# 3
shift
sh ./search.bash "$@"
}

ReverseFunc()
{
if ! [[ -e ./reverse.bash ]]
then
	ErrorAccess Reverse
fi
CheckParametersAmount $# 3
shift
sh ./reverse.bash "$@"
}

StrlenFunc()
{
if ! [[ -e ./strlen.bash ]]
then
	ErrorAccess Strlen
fi
CheckParametersAmount $# 2
shift
sh ./strlen.bash "$@"
}

LogFunc()
{
if ! [[ -e ./log.bash ]]
then
	ErrorAccess Log
fi

sh ./log.bash
}

ExitFunc()
{
if ! [[ -e ./exit.bash ]]
then
	ErrorAccess Exit
fi

if [[ $1 -ne 1 ]] && [[ $1 -ne 2 ]]
then
	ErrorParametersAmount
	exit 1
fi
if ! [[ $2 =~ ^[0-9]+?$ ]]
then
	echo -e "${RED}Argument $2 is not an integer number!${NC}"
	exit 1
fi
shift
exec sh ./exit.bash "$@"
echo "Program finished with exit code $?"
}

HelpFunc()
{
if ! [[ -e ./help.bash ]]
then
	ErrorAccess Help
fi
sh ./help.bash
}

InteractiveFunc()
{
if ! [[ -e ./interactive.bash ]]
then
	ErrorAccess Interactive
fi

exec sh ./interactive.bash
}


if [[ $# -lt 1 ]]
	then ErrorParametersAmount
else
	case "$1" in
	"calc" )
	CalcFunc  "$@"
	;;
	"search" )
	SearchFunc "$@"
	;;
	"reverse" )
	ReverseFunc "$@"
	;;
	"strlen" )
	StrlenFunc "$@"
	;;
	"help" )
	HelpFunc
	;;
	"log" )
	LogFunc
	;;
	"exit" )
	ExitFunc $# $2
	;;
	"interactive" )
	InteractiveFunc
	;;
	* )
	ErrorWrongCommand $1
	esac
fi

exit 0
