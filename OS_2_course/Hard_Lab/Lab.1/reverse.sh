#!/bin/bash
RED='\033[31m'
NC='\033[0m'

[[ -f "$1"]] && { rev "$1" > "$2";} || {echo -e "${RED}File doesn't exist${NC} }
