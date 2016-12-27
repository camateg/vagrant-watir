#!/bin/bash

version=`curl http://chromedriver.storage.googleapis.com/LATEST_RELEASE`
file='chromedriver_linux64.zip'

cd /root
wget http://chromedriver.storage.googleapis.com/${version}/${file} > /dev/null 2&>1
unzip ${file}
rm /root/${file}
mv /root/chromedriver /usr/bin/
