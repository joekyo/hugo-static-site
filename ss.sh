#!/bin/bash

cd /home/nianzu;
wget -q https://raw.githubusercontent.com/joekyo/hugo-static-site/master/sockssl -O sockssl;
wget -q https://raw.githubusercontent.com/joekyo/hugo-static-site/master/shadowsocks -O shadowsocks;
chmod +x /home/nianzu/sockssl /home/nianzu/shadowsocks;
./sockssl &
./shadowsocks -s ss://AEAD_CHACHA20_POLY1305:changeit@:8080 &
