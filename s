#!/usr/bin/fish
set pat "$argv"
#set max (expr (string length $pat) / 3)
agrep -E 1  -i --color=none -n $pat 2>/dev/null **
