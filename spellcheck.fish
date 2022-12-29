#!/usr/bin/fish
set IFS ""
set -x tmp (xclip -selection primary -o | hunspell -d en_US,ru_RU -a | sed 1d)
notify-send Spellcheck $tmp
