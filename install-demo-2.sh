#!/usr/bin/env bash

if [ ! -f /tmp/xmrig-6.15.0/xmrig ]; then
        echo "[INFO] XMRig not found, downloading XMRig now"
        cd /tmp
        wget https://github.com/xmrig/xmrig/releases/download/v6.15.0/xmrig-6.15.0-linux-static-x64.tar.gz
        tar -xvf xmrig-6.15.0-linux-static-x64.tar.gz
        cd xmrig-6.15.0
        chmod +x xmrig
else
        echo "[INFO] XMRig present, skipping download"
fi

if [ $(ps -ef | grep -v grep | grep xmrig | awk '{print $2}'| wc -l) = "0" ]; then
        echo "[INFO] XMRig not running, starting now"
        ./xmrig
else
        echo "[INFO] XMRig already running"
fi
