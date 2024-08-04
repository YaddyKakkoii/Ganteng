#!/bin/bash
YDX="https://raw.githubusercontent.com/YaddyKakkoii/Ganteng/main/"
apt update -y
apt upgrade -y
apt install -y bzip2 gzip wget init coreutils openssl git screen curl jq unzip
apt install lolcat -y && gem install lolcat
MYIP=$(wget -qO- icanhazip.com);
if ! grep -q '8.8.8.8';then
    apt update -y
    apt install resolvconf -y
    echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head
    echo "domain openstacklocal" >> /etc/resolvconf/resolv.conf.d/head
    echo "search openstacklocal" >> /etc/resolvconf/resolv.conf.d/head
    echo "nameserver $MYIP" >> /etc/resolvconf/resolv.conf.d/head
    echo "nameserver $MYIP" >> /etc/resolvconf/resolv.conf.d/head
fi
cat  /etc/resolvconf/resolv.conf.d/head
systemctl start resolvconf.service 
systemctl enable resolvconf.service 
systemctl restart resolvconf.service
resolvconf --enable-updates
GREENBG="\033[42;37m"
Green="\e[92;1m"
z="\033[96m"
tyblue='\e[1;36m'
b="\033[34;1m";m="\033[31;1m";h="\033[32;1m"
p="\033[39;1m";c="\033[35;1m";u="\033[36;1m"
k="\033[33;1m";n="\033[00m"
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
load(){
printf "${p}[${m}•${p}]${n}Check_and_install paket yang diperlukan${h}"
sleep 1
printf "."
sleep 0.5
printf "."
sleep 0.5
printf "."
sleep 1
printf ".\n"
}
load
if ! command -v which &> /dev/null; then apt install which -y; fi
    if ! which gawk &> /dev/null; then
        apt install gawk
    fi
if ! command -v patchelf &> /dev/null; then apt install patchelf; fi
type -P curl 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'curl' not found, installing" && apt install curl -y
folder_bin=$(which curl | sed 's/curl//g')
instal_nodejs(){
    apt update && apt upgrade -y
    apt install perl
    apt install binutils
    apt install libarchive-dev
    apt install acl-dev
    apt install libz-dev
    apt install git
    apt install perl -y
    apt-get update && apt-get upgrade -y
    apt install npm nodejs -y
    apt-get install npm nodejs -y
    ln -s /usr/bin/nodejs /usr/bin/node
    npm install -g bash-obfuscate
}
    if [ $(dpkg-query -W -f='${Status}' shc 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
        echo belum terinstall shc, we will aquire them now. This may take a while.
        read -p 'Press enter to continue.'
        apt update && apt upgrade -y
        apt install shc
    elif [ $(dpkg-query -W -f='${Status}' nodejs 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
        echo belum terinstall nodejs, we will aquire them now. This may take a while.
        read -p 'Press enter to continue.'
        instal_nodejs
    fi
if [[ ! -f ${folder_bin}npm ]]; then
    instal_nodejs
fi
# ============================================================
type -P wget 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'wget' not found, installing" && apt install wget -y
type -P nmap 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'nmap' not found, installing" && apt install nmap -y
type -P zip 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'zip' not found, installing" && apt install zip -y
type -P jq 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'jq' not found, installing" && apt install jq
type -P sshpass 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'sshpass' not found, installing" && apt install sshpass
type -P vim 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'vim' not found, installing" && apt install vim
type -P tput 1>/dev/null
[ "$?" -ne 0 ] && echo "Utillity 'tput' not found, installing ncurses-utils" && apt install ncurses-utils
# ============================================================
echo ""
echo -e "© ᴊɪᴋᴀ ᴛᴇʀᴊᴀᴅɪ ᴅᴄ ᴀᴛᴀᴜ ᴅɪsᴄᴏɴᴇᴛ sᴀᴀᴛ ɪɴsᴛᴀʟᴀsɪ, ᴅᴀɴ ᴍᴀᴜ ᴍᴀsᴜᴋ ᴜɴᴛᴜᴋ ʟɪʜᴀᴛ ᴘʀᴏsᴇsɴʏᴀ. ᴊɢɴ ᴅɪ ɪɴsᴛᴀʟ ʟᴀɢɪ ᴄᴜᴋᴜᴘ ᴍᴀsᴜᴋ ᴋᴇ ᴠᴘs ᴛʀᴜs ᴋᴇᴛɪᴋ"
echo -e "[screen -r install]"
echo -e "© ʙᴜᴀᴛ ʙᴀʟɪᴋ ʟᴀɢɪ ᴋᴇ ɪɴsᴛᴀʟᴀɴ ᴀᴡᴀʟ"
echo ""
sleep 3
