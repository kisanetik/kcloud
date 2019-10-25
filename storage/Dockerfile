FROM ubuntu:xenial-20191010

LABEL maintainer="Denis Yackushev <kisanetik@gmail.com>"

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get -y install --no-install-recommends wget gnupg ca-certificates software-properties-common htop mc \
    && wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add - \
    && add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" \
    && apt-get update \
    && sudo apt-get -y install openresty luarocks \
    && luarocks install lua-json \
    && cd /home \
    && git clone https://github.com/kisanetik/kcloud.git \
    && cp /home/kcloud/storage/nginx/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf \
    && service openresty start

# ENV PATH=$PATH:/usr/local/openresty/luajit/bin/:/usr/local/openresty/nginx/sbin/:/usr/local/openresty/bin/

# CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]