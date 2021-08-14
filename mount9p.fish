#!/usr/bin/fish
# Mounts and configures 9P services
fontsrv & 
plumber &
mkdir /tmp/font &&
9pfuse (namespace)/font /tmp/font
