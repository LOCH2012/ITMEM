#!/bin/bash
RED='\033[31m'
NC='\033[0m'

[[ -n "$2" && -n "$3" ]] && { [[ -d "$2" ]] && { grep -r "$3" "$2"; } || echo -e "${RED}Directory doesn't exist${NC}"; } echo -e "${RED}Not enough arguments${NC}"
