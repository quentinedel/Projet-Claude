#!/bin/sh
Fupdate()
{
	apt -y update && apt -y upgrade
	if [ $? -eq 0]
	then
		return 1
	else
		return 0
	fi
}
