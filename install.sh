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
sudo bash rules.sh
cp -R Programs ~/
sudo cp jetbrains-idea.desktop /usr/share/applications
sudo cp jon-sublime.desktop /usr/share/applications
sudo cp "judging note.pdf" /usr/share/doc/icpc
sudo cp "TechnicalNotes.pdf" /usr/share/doc/icpc
cd ~/Programs; tar xvfz ideaUI.tar.gz; tar xvfz sublime2.tar.gz