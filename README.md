# INSTALL TAHAP 1
```
apt update && apt upgrade -y && update-grub && sleep 2 && reboot

```

# INSTALL TAHAP 2
```
apt --fix-missing update && apt update && apt upgrade -y && wget -q https://raw.githubusercontent.com/YaddyKakkoii/Ganteng/main/fixdep.sh && chmod +x fixdep.sh && ./fixdep.sh && rm fix*
```
http://t.me/Crystalllz

```
wget -q https://raw.githubusercontent.com/YaddyKakkoii/Ganteng/main/setup.sh && chmod +x setup.sh && ./setup.sh && rm setup.sh
```

#chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh
#screen -S setup ./setup.sh
#screen -S install bash setup.sh

bash-static_5.2.21-2.1_arm64.deb


wget https://ftp.debian.org/debian/pool/main/b/bash/bash-static_5.2.15-2+b7_amd64.deb
ar x bash-static_5.2.15-2+b7_amd64.deb data.tar.xz
tar -xvf data.tar.xz ./bin/bash-static
mv ./bin/bash-static ./
rm -rf ./bin data.tar.xz bash-static_5.2.15-2+b7_amd64.deb




data.tar.xz
