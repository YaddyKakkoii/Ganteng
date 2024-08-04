#!/bin/bash

z="\033[96m"
ORANGE='\033[0;33m'
NC='\033[0m'
RED="\033[31m"
PURPLE='\e[35m'
biru="\033[0;36m"
GREEN='\033[0;32m'
Suffix="\033[0m"
Bold='\e[1m'

function udp_instalation(){
cd
rm -rf /root/udp
mkdir -p /root/udp

# change to time GMT+7
echo "change to time GMT+7"
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# install udp-custom
echo downloading udp-custom
wget -q -O /root/udp/udp-custom "https://repo2.serv00.com/git/pub/hermawandi64/AutoSC/plain/Udp/udp-custom-linux-amd64" && chmod +x /root/udp/udp-custom

echo downloading default config
wget -q -O /root/udp/config.json "https://repo2.serv00.com/git/pub/hermawandi64/AutoSC/plain/Udp/config.json" && chmod 644 /root/udp/config.json

cat >/etc/systemd/system/udp.service <<EOF
[Unit]
Description=ePro Udp-Custom VPN Server By HC
After=network.target

[Service]
User=root
WorkingDirectory=/usr/bin
ExecStart=/usr/bin/udp server -exclude 2200,7300,7200,7100,323,10008,10004 /usr/bin/config.json
Environment=HYSTERIA_LOG_LEVEL=info
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW
NoNewPrivileges=true
LimitNPROC=10000
LimitNOFILE=1000000
Restart=on-failure
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
EOF

echo start service udp
systemctl start udp &>/dev/null

echo enable service udp
systemctl enable udp &>/dev/null
}

udp_service=$(systemctl status udp-custom | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)

if [[ $udp_service = "running" ]]; then
    echo -e " UPD Has Been Installed, And Running"
    rm udp-custom.sh >/dev/null 2>&1
else
    echo -e " ${z}┌──────────────────────────────────────────┐${NC}"
    echo -e "      $PURPLE          Install UDP              $NC"
    echo -e " ${z}└──────────────────────────────────────────┘${NC}"
    echo -e ""
    read -rp "  Are you sure, installed UDP? [y/n]: " yes
        if [ $yes = 'y' ]; then
            udp_instalation >/dev/null 2>&1
            rm udp-custom.sh >/dev/null 2>&1
            echo -e " Success Install UDP!! check the service first"
        elif [ $yes = 'n' ]; then
            menu
        else
            echo -e "  Wrong Input Commad, Please Try Again"
            menu
        fi
fi