#!/bin/bash 
printf "\n"
echo "Available Scripts (Run by bash scriptName)"
for file in ~/bin/*
do
	printf ${file:15}
	printf "\n"
done
printf "\n"