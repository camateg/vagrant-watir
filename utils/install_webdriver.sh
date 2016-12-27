#!/bin/bash

version=`curl -silent https://chromedriver.storage.googleapis.com/LATEST_RELEASE`
file='chromedriver_linux64.zip'

cd /root
wget https://chromedriver.storage.googleapis.com/${version}/${file}
unzip ${file}
rm /root/${file}
mv /root/chromedriver /usr/bin/
