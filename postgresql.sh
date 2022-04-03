#!/bin/bash

if [[ $EUID > 0 ]]
then
	echo "must be run as root or sudo."
	exit
fi

status=$(systemctl show -p ActiveState --value postgresql)

if [[ $status == "active" ]]
then
	systemctl stop postgresql.service
	echo "postgresql service is inactive"
elif [[ $status == "inactive" ]]
then
	systemctl start postgresql.service
	echo "postgresql service is active"

else
	echo "postgresql service is not installed"
fi
