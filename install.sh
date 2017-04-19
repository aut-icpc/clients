#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : install.sh
#
# [] Creation Date : 03-11-2016
#
# [] Created By : Parham Alvani (parham.alvani@gmail.com)
# =======================================
# Login First, Thanks to FAUTLogin
code=`curl -k -s -o /dev/null -w "%{http_code}" \
	-X POST \
	-H "Content-Type: application/x-www-form-urlencoded" \
	-d "erase-cookie=false&password=$password&popup=false&username=$username" \
	"https://login.aut.ac.ir/login"`

if [ $code == '302' ]; then
	echo "Login was successful."
else
	echo "Login was failed."
fi

# Install required packages
sudo apt-get update
sudo apt-get install -y codeblocks

# Bans the traffics
sudo bash rules.sh
