#!/bin/bash

OS="`uname`"
case $OS in
  'Linux')
    minecraft_dir=$HOME/.minecraft/
    ;;
  'Darwin') 
    minecraft_dir=$HOME'/Library/Application Support/minecraft'
    ;;
esac

mods_dir="$minecraft_dir/mods"

echo Updating mods.txt
curl -L -o mods.txt https://raw.githubusercontent.com/lpenguin/mcupdate/master/mods.txt
for mod in $(cat mods.txt) ; do
	name=$(basename $mod)
	echo Downloading "$mod" to "$mods_dir"
	curl -L "$mod" -o "$mods_dir/$name"
done
