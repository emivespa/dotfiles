all: nixify-npmrc Music xrdb sxhkd # xmodmap

.PHONY: nixify-npmrc
nixify-npmrc: # Make sure .npmrc is NixOS compliant.
	grep '^prefix' .npmrc || \
		printf %s\\n "prefix=/home/nixos/.npm-global" >>"$${HOME}/.npmrc"

.PHONY: Music
Music: Music # TODO.
	true

.PHONY: xrdb
xrdb: # Update X resources DB.
	type xrdb && xrdb ~/.Xresources

.PHONY: sxhkd
sxhkd: # Reload sxhkd config.
	type sxhkd && pkill -usr1 -x sxhkd

.PHONY: xmodmap
xmodmap: # Reload xmodmap config
	type xmodmap && xmodmap "${HOME}/.xmodmaprc"

.PHONY: xrandr
xrandr:
	model="$(< /sys/devices/virtual/dmi/id/product_version) " \
		model+="$(< /sys/devices/virtual/dmi/id/product_name)" \
		model="${model//*O.E.M*}" \
		test "$model" == 'XPS 13 9360'
	xrandr --output eDP-1 --mode 1600x900 --noprimary
