#!/bin/bash
LGREEN='\033[1;32m'
LPURPLE='\033[1;36m'
RED='\033[0:31m'
NC='\033[0m'
. ./main.bash
Menu()
{
echo -e "${LGREEN}Interactive is ON${NC}\n"
echo "Choose one command from list below.\n 1.calc/a\n2.search/b\n3.reverse/c\n4.strlen/d\n5.log/e\n7.help/f\n8.exit/g\nEnter q to quit\n"
}
while true
do
	Menu
	read command
	case "$command" in
	"calc" )
	echo "Enter 3 arguments:\n 1.sum/sub/mul/div\n 2.First argument\n 3.Second argument\n"
	read option arg1 arg2
	CalcFunc 1 $option $arg1 $arg2
	;;
	"a" )
	echo "Enter 3 arguments:\n 1.sum/sub/mul/div\n 2.First argument\n 3.Second argument\n"
	read option arg1 arg2
	CalcFunc 1 $option $arg1 $arg2
	;;
	"search" )
	echo "Enter 2 arguments:\n 1.Directory\n 2.Regular expression\n"
	read dir regex
	SearchFunc 1 $dir $regex
	;;
        "b" )
	echo "Enter 2 arguments:\n 1.Directory\n 2.Regular expression\n"
	read dir regex
	SearchFunc 1 $dir $regex
	;;
        "reverse" )
	echo "Enter 2 arguments:\n 1.Input file\n 2.Output file\n"
	read inp outp
	ReverseFunc 1 $inp $outp
	;;
        "c" )
	echo "Enter 2 arguments:\n 1.Input file\n 2.Output file\n"
	read inp outp
	ReverseFunc 1 $inp $outp
	;;
        "strlen" )
	echo "Enter 1 argument:\n 1.string\n"
	read string
	ReverseFunc 1 $string
	;;
        "d" )
	echo "Enter 1 argument:\n 1.string\n"
	read string
	ReverseFunc 1 $string
	;;
        "log" )
	LogFunc
	;;
        "e" )
	LogFunc
	;;
        "help" )
	HelpFunc
	;;
        "f" )
        HelpFunc
        ;;
        "exit" )
	echo "Enter 1 argument:\n 1.exit code (default is 0)\n"
	read code
	ExitFunc 1 $code
	;;
        "g" )
	echo "Enter 1 argument:\n 1.exit code (default is 0)\n"
	read code
	ExitFunc 1 $code
	;;
        * )
        ErrorCommand
        esac
done

exit 0
