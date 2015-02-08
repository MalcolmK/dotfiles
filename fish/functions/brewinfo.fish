function brewinfo
	set info_link (brew info $argv | grep http | grep -v From)
	open -a "$HOME/Applications/Google Chrome.app/" $info_link
end
