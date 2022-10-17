#!/bin/bash
if pgrep -x "$1" > /dev/null; then
   killall $2
else 
   $3
fi
