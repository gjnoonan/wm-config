#!/bin/sh

feh --bg-scale ~/wallpapers/archjeans.jpg &	# set background
numlockx on &                               	# numlock on
setxkbmap -option terminate:ctrl_alt_bksp & 	# C-A-BS to kill X
urxvtd -q -f -o &                           	# start urxvt daemon
xcompmgr -fF &                              	# allow transparency
xrdb $HOME/.Xdefaults &                     	# load Xdefaults
xset fp+ /usr/share/fonts/local &           	# add local fonts
xsetroot -cursor_name left_ptr              	# req'd for xmonad's cursor
                                            	
(sleep 3 && xmodmap $HOME/.Xmodmap) &       	# remove capslock
                                            	
xmonad                                      	# start xmonad