#!/bin/bash
YDX="https://raw.githubusercontent.com/YaddyKakkoii/Ganteng/main/"
#grep '8.8.8.8' /etc/resolvconf/resolv.conf.d/head
MYIP=$(wget -qO- icanhazip.com);
if ! grep -q '8.8.8.8' /etc/resolvconf/resolv.conf.d/head; then
    apt update -y
    apt install resolvconf -y
    echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head
    echo "domain openstacklocal" >> /etc/resolvconf/resolv.conf.d/head
    echo "search openstacklocal" >> /etc/resolvconf/resolv.conf.d/head
    echo "nameserver $MYIP" >> /etc/resolvconf/resolv.conf.d/head
    echo "nameserver $MYIP" >> /etc/resolvconf/resolv.conf.d/head
    systemctl start resolvconf.service 
    systemctl enable resolvconf.service 
    systemctl restart resolvconf.service
    resolvconf --enable-updates
fi
cat /etc/resolvconf/resolv.conf.d/head
apt update -y
apt upgrade -y
apt-get update && apt-get upgrade -y

apt install lolcat -y
gem install lolcat
apt install vim -y
apt install zip -y
apt install nmap -y
apt install sshpass -y
apt install ncurses-utils -y
apt install gawk -y
apt install patchelf -y
apt install -y bzip2 gzip wget init coreutils openssl git screen curl jq unzip
    apt install perl
    apt install binutils -y
    apt install libarchive-dev -y
    apt install acl-dev
    apt install libz-dev
    apt install git
    apt install perl -y
    apt install shc
    apt install npm nodejs -y
    apt-get install npm nodejs -y
    ln -s /usr/bin/nodejs /usr/bin/node
    npm install -g bash-obfuscate

echo ""
echo -e "jika diskonek saat proses penginstalan ketik [screen -r potato] untuk kembali ke instalasi awal"
echo -e "jika diskonek saat proses penginstalan ketik [screen -r install] untuk kembali ke instalasi awal"
echo ""echo ""
sleep 3
