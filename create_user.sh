#!/bin/bash
#
# This Script can input multiple users

<<disclaimer
 This is multi line comments.
 This is script that can take multiple inputs
 and create multiple users
 use wisely
disclaimer

for i in {1..5}
do
	read -p "Enter the user name" user_name
	sudo useradd -m $user_name
	echo "User $user_name added successfully"
done
