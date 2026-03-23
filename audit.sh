#!/bin/bash

# ===== COLORS =====
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
RED="\e[31m"
CYAN="\e[36m"
RESET="\e[0m"

# ===== HEADER =====
clear
echo -e "${CYAN}==========================================${RESET}"
echo -e "${CYAN}         LINUX SYSTEM AUDIT TOOL          ${RESET}"
echo -e "${CYAN}==========================================${RESET}"
echo -e "${YELLOW}Audit started on:$(date)${RESET}"
echo

# ===== SYSTEM INFO =====
echo -e "${BLUE}[1] Current User${RESET}"
echo -e "${GREEN}$(whoami)${RESET}"
echo

echo -e "${BLUE}[2] Hostname${RESET}"
echo -e "${GREEN}$(hostname)${RESET}"
echo

echo -e "${BLUE}[3] Current Directory${RESET}"
echo -e "${GREEN}$(pwd)${RESET}"
echo

echo -e "${BLUE}[4] Kernel / OS Info${RESET}"
uname -a
echo

# ===== NETWORK INFO =====
echo -e "${BLUE}[5] IP Address Information${RESET}"
ip a | grep inet
echo

echo -e "${BLUE}[6] Listening Ports${RESET}"
ss -tuln
echo

# ===== PROCESS INFO =====
echo -e "${BLUE}[7] Running Processes (Top 10)${RESET}"
ps aux | head
echo

# ===== LOGIN INFO =====
echo -e "${BLUE}[8] Last Logged In Users${RESET}"
last | head
echo

# ===== DISK INFO =====
echo -e "${BLUE}[9] Disk Usage${RESET}"
df -h
echo

# ===== MEMORY INFO =====
echo -e "${BLUE}[10] Memory Usage${RESET}"
free -h
echo

# ===== FOOTER =====
echo -e "${CYAN}=====================================${RESET}"
echo -e "${GREEN}           AUDIT COMPLETE           ${RESET}"
echo -e "${CYAN}=====================================${RESET}"





