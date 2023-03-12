#!/bin/bash

#COLORS
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'

clear

username=""


#echo -ne "${BlueF}[${yellow}?${BlueF}] ${lightgreen}Insert your username: ${RESET}" && read username


ls -a | fzf \
  --bind "enter:execute-silent(curl -s -X POST http://localhost:3000/send -H 'Content-Type: text/plain' -d '{q}')+clear-query+preview(curl -s -X GET http://localhost:3000/fetch)" \
  --bind "ctrl-r:preview(curl -s -X GET http://localhost:3000/fetch)" \
  --preview "curl -s -X GET http://localhost:3000/fetch" \
  --preview-window=up,99% \
  --header "Press Ctrl-R to reload" \
  --reverse \
  --disabled \
  --border=rounded \
  --margin 2% \
  --prompt="Send ❯ " \
  --color="spinner:yellow,border:blue,prompt:yellow"
  
  
