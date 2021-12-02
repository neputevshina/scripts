#!/usr/bin/fish
# Mounts and configures 9P services
killall fontsrv
killall plumber
fusermount -uz /tmp/font

fontsrv & 
plumber &
mkdir /tmp/font
9pfuse (namespace)/font /tmp/font
