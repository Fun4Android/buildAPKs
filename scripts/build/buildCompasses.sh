#!/data/data/com.termux/files/usr/bin/sh -e 
# Copyright 2017 (c) all rights reserved 
# by S D Rausty https://sdrausty.github.io
#####################################################################
cd $HOME/buildAPKs
echo Updating buildAPKs.
git pull
git submodule update --init ./sources/compasses
git submodule update --init ./sources/tutorials
git submodule update --init ./sources/samples
find ~/buildAPKs/sources/compasses/  -name AndroidManifest.xml \
	-execdir ~/buildAPKs/scripts/build/buildOne.sh {} \;
cd /data/data/com.termux/files/home/buildAPKs/sources/samples/android-code/Compass/
$HOME/buildAPKs/scripts/build/buildOne.sh
cd /data/data/com.termux/files/home/buildAPKs/sources/samples/Compass/
$HOME/buildAPKs/scripts/build/buildOne.sh
