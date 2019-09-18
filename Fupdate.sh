#!/bin/sh
Fupdate()
{
	apt -y update && apt -y upgrade
	if [ $? -eq 0]
	then
		echo "ok"
		return 1
	else
		echo"down"
		return 0
	fi
}
