#!/bin/bash

source "./create_user_fun.sh"

echo "How many you want to add user?"
read -p "Enter the number:" number_user

for(( i=0; i<$number_user; i++))
do
	create_user
done

