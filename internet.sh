#!/bin/bash
# In The Name Of God
# ========================================
# [] File Name : internet.sh
#
# [] Creation Date : 20-04-2017
#
# [] Created By : Parham Alvani (parham.alvani@gmail.com)
# =======================================
# Login First, Thanks to FAUTLogin
code=`curl -k -s -o /dev/null -w "%{http_code}" \
	-X POST \
	-H "Content-Type: application/x-www-form-urlencoded" \
	-d "erase-cookie=false&password=guest&popup=false&username=guest" \
	"https://192.168.2.3/login"`

if [ $code == '302' ]; then
	echo "Login was successful."
else
	echo "Login was failed."
fi

# Provides hosts
echo '185.8.174.87 quera.ir' | sudo tee --append /etc/hosts > /dev/null
echo '185.8.174.87 www.quera.ir' | sudo tee --append /etc/hosts > /dev/null
