#!/bin/bash

set -x 
sudo make -j 
sudo rm /usr/local/nginx_fstack/logs/error.log

cd objs
sudo ./nginx -c $HOME/src/f-stack/app/nginx-1.25.2/conf/nginx.conf

sleep 30
sudo ./nginx -s stop
cd ../