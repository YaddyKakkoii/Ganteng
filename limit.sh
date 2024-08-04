#!/bin/bash
YDX="https://raw.githubusercontent.com/YaddyKakkoii/Ganteng/main/"
wget -q -O /etc/systemd/system/limitvmess.service "${YDX}limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${YDX}limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${YDX}limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${YDX}limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${YDX}limit.vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${YDX}limit.vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${YDX}limit.trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "${YDX}limit.shadowsocks" >/dev/null 2>&1
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
