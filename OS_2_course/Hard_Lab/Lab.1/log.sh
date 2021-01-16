#!/bin/bash

YELLOW='\e[1;33m'
BLUE='\e[34m'
NC='\e[0m'
dir=$(pwd)

echo -n > $dir/MyLog.txt
while read LINE
do
	if [[ "$LINE" == *" (WW) "* ]]; then
		echo -e "${YELLOW}Warninig:${NC}" ${LINE:17}
		echo "Warning:" ${LINE:17} >> dir/MyLog.txt
	fi
done < /var/log/anaconda/X.log

while read LINE
do
	if [[ "$LINE" == *" (II) "* ]]; then
		echo -e "${BLUE}Information:${NC}" ${LINE:17}
		echo "Information:" ${LINE:17} >> dir/MyLog.txt
	fi
done < /var/log/anaconda/X.log
