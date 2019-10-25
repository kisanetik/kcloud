#!/bin/sh
apt-get update && apt-get -y install htop mc \
apt-get -y install --no-install-recommends wget gnupg ca-certificates \
wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add - \
apt-get -y install --no-install-recommends software-properties-common \
add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" \
apt-get update \
sudo apt-get -y install openresty luarocks \
luarocks install lua-json \
service openresty start \
cd /home \
git clone https://github.com/kisanetik/kcloud.git \
cp /home/kcloud/storage/nginx/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
#linuxbrew-wrapper