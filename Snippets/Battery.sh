## NOTE: this is just for fun, dont take it serious xd

function battery (){

	battery=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | cut -d ':' -f 2 | tr -d '[:space:]' | tr -d '%')

	if [ "$battery" -lt 70 ]; then
		echo -e "Battery is low idiot, you have $battery%"
	else
		echo -e "You're fine bro xd, you have $battery%"
	fi
}
