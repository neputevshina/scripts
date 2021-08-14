#!/usr/bin/fish
set scdir ~/Pictures/Screenshots
set smoldate (date +%Y%m)
if test ! -d $scdir/$smoldate 2>/dev/null
	mkdir $scdir/$smoldate
end
set filename "$scdir/$smoldate/"(date +%Y%m%d-%T)
scrot -sf "$filename.png"
xclip -selection clipboard -t image/png -i "$filename.png"