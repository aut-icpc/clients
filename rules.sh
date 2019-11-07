#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : rules.sh
#
# [] Creation Date : 03-11-2016
#
# [] Created By : Parham Alvani (parham.alvani@gmail.com)
#
# [] Modified By : Mohammad Fatemi (mr.smf8@gmail.com)
# =======================================
iptables -F
# Blocking all input and output packets
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# Allowing 172.* addresses (Judge,FTP,PXE,?)
iptables -A INPUT -s 172.0.0.0/8 -j ACCEPT
iptables -A OUTPUT -d 172.0.0.0/8 -j ACCEPT
# Allowing package transmition thourgh localhost for internal jobs
iptables -A OUTPUT -d 127.0.0.0/8 -j ACCEPT
iptables -A INPUT -s 127.0.0.0/8 -j ACCEPT
# Saving text version of iptables into file
iptables-save > /etc/iptables.rules
