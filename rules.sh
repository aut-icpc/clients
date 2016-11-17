#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : rules.sh
#
# [] Creation Date : 03-11-2016
#
# [] Created By : Parham Alvani (parham.alvani@gmail.com)
# =======================================
iptables -F
iptables -P OUTPUT DROP
iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -p tcp -d 192.168.128.0/24 --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp -d 127.0.0.0/8 --dport 33494 -j ACCEPT
iptables-save > /etc/iptables.rules
