if [[ -z "$IDSPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi
