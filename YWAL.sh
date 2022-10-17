#!/bin/bash

wstock () {
	wofi -Q $1 -l 1 -W 15% --line 8 -p "YWAL" --normal-window
}

yad --form --width=120 \
	--title="YWAL" \
	--align=left \
	--field=" All Apps  ":fbtn "kill-launch.sh wofi wofi 'wstock app'" \
	--field=" Accesories":fbtn "kill-launch.sh wofi wofi 'wstock tool'" \
	--field=" Multimedia":fbtn "kill-launch.sh wofi wofi 'wstock Audio'" \
	--field=" Graphics  ":fbtn "kill-launch.sh wofi wofi 'wstock Graphic'" \
	--field=" Systems   ":fbtn "kill-launch.sh wofi wofi 'wstock System'" \
	--field=" Settings  ":fbtn "kill-launch.sh wofi wofi 'wstock Setting'" \
	--field=" Editor    ":fbtn "kill-launch.sh wofi wofi 'wstock Text'" \
	--field=" Internet  ":fbtn "kill-launch.sh wofi wofi 'wstock Network'" \
	--no-buttons
