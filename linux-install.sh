#!/bin/bash
@echo off
# backup Balatro exe
cp Balatro.exe Balatro.exe.bak
# extract specific file we need
7z e "Signalis Skins for Balatro V1.zip" 'Signalis Skins for Balatro V1/resources/textures/2x/8BitDeck.png'
# Recreate needed directory structure (7z is being a pain and I can't find a way to directly move the file to the needed folder with the a command)
mkdir -p resources/textures/2x
mv 8BitDeck.png resources/textures/2x/8BitDeck.png
# add file to .exe
7z a Balatro.exe resources/*
# delete temp files
rm -rf resources
