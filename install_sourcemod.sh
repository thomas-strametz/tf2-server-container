#!/bin/sh
cd ./tf2
wget https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1144-linux.tar.gz
wget https://sm.alliedmods.net/smdrop/1.10/sourcemod-1.10.0-git6502-linux.tar.gz
tar xzf mmsource-1.11.0-git1144-linux.tar.gz
tar xzf sourcemod-1.10.0-git6502-linux.tar.gz
rm -rf mmsource-1.11.0-git1144-linux.tar.gz sourcemod-1.10.0-git6502-linux.tar.gz
cd -