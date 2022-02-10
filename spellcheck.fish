#!/usr/bin/fish
set -x tmp (xclip -selection primary -o | hunspell -d en_US,ru_RU -a)
notify-send "$tmp"
