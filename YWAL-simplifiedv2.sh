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
	--use-interp="bash -c" \
	--field=" All Apps  ":fbtn "'kila wofi wofi app'" \
	--field=" Accesories":fbtn "'kila wofi wofi tool'" \
	--field=" Multimedia":fbtn "'kila wofi wofi Audio'" \
	--field=" Graphics  ":fbtn "'kila wofi wofi Graphic'" \
	--field=" Systems   ":fbtn "'kila wofi wofi System'" \
	--field=" Settings  ":fbtn "'kila wofi wofi Setting'" \
	--field=" Editor    ":fbtn "'kila wofi wofi Text'" \
	--field=" Internet  ":fbtn "'kila wofi wofi Network'" \
	--no-buttons
