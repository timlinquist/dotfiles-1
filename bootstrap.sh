#!/bin/bash

git pull

for FILE in bash_profile pryrc tm_properties
do
	rm -f "$HOME/.$FILE"
	ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
	echo 
done

source ~/.bash_profile