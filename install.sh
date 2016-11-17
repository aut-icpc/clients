#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : install.sh
#
# [] Creation Date : 03-11-2016
#
# [] Created By : Parham Alvani (parham.alvani@gmail.com)
# =======================================
sudo apt install codeblocks
sudo apt install iptables-persistent
sudo bash rules.sh
cp -R Programs ~/
sudo cp jetbrains-idea.desktop /usr/share/applications
sudo cp sublime.desktop /usr/share/applications
cd ~/Programs; tar xvfz ideaUI.tar.gz
