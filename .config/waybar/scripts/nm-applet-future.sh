#!/usr/bin/env bash

# SCRIPT BY MANAN BIN JAVAID

if [[ "$1" == "stop" ]]; then
	killall nm-applet
elif [[ "$1" == "toggle" ]]; then
	if pgrep -x "nm-applet" >/dev/null; then
		eho "Running"
		killall nm-applet
	else 
		echo "Stopped"
		killall nm-applet
	fi
else
	nm-applet --indicator &
fi
