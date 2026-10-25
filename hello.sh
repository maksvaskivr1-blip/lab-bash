#!/bin/bash

if [ $# -eq 0 ]
	then
	echo "Використання: ./hello.sh <ім'я>"
	exit 1
else
TODAY=$(date +%F)
echo "Привіт, $1! Сьогодні $TODAY idi naxui<3"
fi
