#!/bin/sh

iptables -F \
&& iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT \
&& iptables -I INPUT -p tcp --dport 5678 -j ACCEPT \
&& iptables -A INPUT -j DROP
cd /usr/local/src/sidecar_server/
python sidecar_server.py
