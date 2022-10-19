#!/bin/sh

yum -y install wget gcc zlib-devel openssl-devel
wget https://www.python.org/ftp/python/3.8.15/Python-3.8.15.tgz
tar -zxvf Python-3.8.15.tgz
cd Python-3.8.15
./configure --prefix=/usr/local/python/python3.8
make
make install
cd ..
ln -s /usr/local/python/python3.8/bin/python3 /usr/bin/python3
python3 -V
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
ln -s /usr/local/python/python3.8/bin/pip3 /usr/bin/pip3
