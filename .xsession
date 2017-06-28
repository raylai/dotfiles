#!/bin/sh

. $HOME/.profile

(
	export EDITOR=E	# should be editinacme
	export PAGER=nobs
	export SHELL=/usr/local/plan9/bin/rc
	plumber
	acme -a &
)

# Set a black background.
# i3, for some reason, messes up the wallpaper upon startup.
{
	sleep 5
	xsetroot -solid black
} &

exec i3
