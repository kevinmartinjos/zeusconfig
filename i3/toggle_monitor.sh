if xrandr --listmonitors | grep eDP1
then
		xrandr --output eDP1 --off & xrandr --output HDMI1 --auto
		killall conky
		conky -c ~/.config/conky/conky.lua		

else
		xrandr --output eDP1 --auto 
		xrandr --output HDMI1 --off
		killall conky
		conky -c ~/.config/conky/conky.lua		

fi

