#!/bin/bash
# X GHOST IP Tracer
# Developed by X GHOST - For educational & legal use only.

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
BLACK='\033[0;30m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BBLACK='\033[1;30m'
BRED='\033[1;31m'
BGREEN='\033[1;32m'
BYELLOW='\033[1;33m'
BBLUE='\033[1;34m'
BMAGENTA='\033[1;35m'
BCYAN='\033[1;36m'
BWHITE='\033[1;37m'
NC='\033[0m'

# Banner
banner() {
clear
echo -e "${RED}"
echo "     ________  ______  ___________   ________     __________  ___   ____________"
echo "    / ____/ / / / __ \/ ___/_  __/  /  _/ __ \   /_  __/ __ \/   | / ____/ ____/"
echo "   / / __/ /_/ / / / /\__ \ / /     / // /_/ /    / / / /_/ / /| |/ /   / __/   "
echo "  / /_/ / __  / /_/ /___/ // /    _/ // ____/    / / / _, _/ ___ / /___/ /___   "
echo "  \____/_/ /_/\____//____//_/    /___/_/        /_/ /_/ |_/_/  |_\____/_____/   "
echo -e "${YELLOW}              IP Tracer by X GHOST${NC}"
echo -e "${WHITE}CODE BY X AWAN${NC}"
echo -e "${NC}"

}


# Track IP Function
track_ip() {
  read -p "Enter Target IP: " target
  echo -e "\n${GREEN}[+] Fetching info for ${target}...${NC}\n"
  curl -s "http://ip-api.com/json/${target}" | jq
}

# Track Own IP
track_own_ip() {
  echo -e "\n${GREEN}[+] Fetching your IP info...${NC}\n"
  curl -s "http://ip-api.com/json/" | jq
}

# Help Function
help_menu() {
  echo -e "\nCommands:"
  echo -e "${YELLOW} 1${NC} - Track IP Address"
  echo -e "${YELLOW} 2${NC} - Track Your IP Address"
  echo -e "${YELLOW} 3${NC} - Help"
  echo -e "${YELLOW} X${NC} - Exit\n"
}

# Main Menu
while true; do
  banner
  echo -e "${BGREEN}============== { Track IP Location } ==============${NC}"
  echo -e "${MAGENTA} [1]${NC} Track IP Address"
  echo -e "${MAGENTA} [2]${NC} Track Your IP Address"
  echo -e "${MAGENTA} [3]${NC} Help"
  echo -e "${BLUE} [X]${NC} Exit"
  echo -n "X GHOST >> "
  read choice
  case "$choice" in
    1) track_ip ;;
    2) track_own_ip ;;
    3) help_menu ;;
    X|x) echo -e "\n${RED}Exiting... Stay Ghostly!${NC}"; exit ;;
    *) echo -e "${RED}Invalid option!${NC}" ;;
  esac
  echo -e "\nPress Enter to continue..."
  read
done
