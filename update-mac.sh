#!/bin/bash

curl -o mods.txt https://raw.githubusercontent.com/lpenguin/mcupdate/master/mods.txt
for mod in $(cat mods.txt) ; do
	name=$(basename $mod)
	curl $mod -o $HOME/Library/Application\ Support/minecraft/mods/$name
done