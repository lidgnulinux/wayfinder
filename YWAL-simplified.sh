#!/bin/bash

#declare wstocks killlaunch 

kila () {
	if pgrep -x $1 > /dev/null; then
		killall "$2"
	else 
		wofi -Q "$3" -l 1 -W 15% --line 8 -p YWAL --normal-window
	fi

}

export -f kila 

yad --form --width=120 \
	--title=YWAL \
	--align=left \
	--field=" All Apps  ":fbtn "bash -c 'kila wofi wofi app'" \
	--field=" Accesories":fbtn "bash -c 'kila wofi wofi tool'" \
	--field=" Multimedia":fbtn "bash -c 'kila wofi wofi Audio'" \
	--field=" Graphics  ":fbtn "bash -c 'kila wofi wofi Graphic'" \
	--field=" Systems   ":fbtn "bash -c 'kila wofi wofi System'" \
	--field=" Settings  ":fbtn "bash -c 'kila wofi wofi Setting'" \
	--field=" Editor    ":fbtn "bash -c 'kila wofi wofi Text'" \
	--field=" Internet  ":fbtn "bash -c 'kila wofi wofi Network'" \
	--no-buttons
