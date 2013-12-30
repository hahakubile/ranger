# before you install python 2.7 in centos, check https/zlib support
#
# 1. Compression requires the (missing) zlib module
# > yum -y install zlib zlib-devel
# 2. unknown url type: https -- Some packages may not be found!
# > yum -y install openssl openssl-devel 
# 

# 1. install python
wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz -P /opt
cd /opt
tar xvf Python-2.7.5.tgz
./configure --prefix=/usr/local
# make altinstall is used to prevent replacing the default python binary file /usr/bin/python
make && make altinstall

# replace the default python
mv /usr/bin/python /usr/bin/python.bak
ln -s /usr/local/bin/python2.7 /usr/bin/python

# test install
python

# 2. install setuptools
wget http://pypi.python.org/packages/source/s/setuptools/setuptools-0.6c11.tar.gz -P /opt/
tar zxvf setuptools-0.6c11.tar.gz
python setup.py install
 
# 3. install pip
easy_install pip

# done
