# link: https://www.digitalocean.com/community/articles/how-to-set-up-python-2-7-6-and-3-3-3-on-centos-6-4

# Before you install python 2.7 in centos 5.*, first check https/zlib/bzip2 support
#
# 1. Compression requires the (missing) zlib module
# > yum -y install zlib zlib-devel
# 2. unknown url type: https -- Some packages may not be found!
# > yum -y install openssl openssl-devel 
# 3. python -c "import bz2; print bz2.__doc__" ==> CompressionError: bz2 module is not available
# > yum -y install bzip2 bzip2-devel
# 

# When you are with CentOS 5.*, you will see that Python is at version 2.4.3, it is reserved for system's use.
# Next we are going to install Python 2.7.5 without breaking the system's default.
# It is rather important to not to get involved with that as critical system tools such as YUM depend on it. 

# 1. install python 2.7
wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz -P /opt
cd /opt
tar xvf Python-2.7.5.tgz
cd Python-2.7.5
./configure --prefix=/usr/local
# make altinstall is used to prevent replacing the default python binary file /usr/bin/python
make && make altinstall

# 2. Adding New Python Installation Location to $PATH
export PATH="/usr/local/bin:$PATH"
# or you can:
# echo "export PATH=\"/usr/local/bin:\$PATH\"" >> /etc/profile
# source /etc/profile

# 3. Then check python command
python2.7 -c "import sys; print sys.version"

# optional, replace the default python, donot replace the default python unless you know what you are doing!
mv /usr/bin/python /usr/bin/python.bak
ln -s /usr/local/bin/python2.7 /usr/bin/python
# change yum to use python2.4
vim /usr/bin/yum
change #!/usr/bin/python to #!/usr/bin/python2.4

# 2. install setuptools
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-1.4.2.tar.gz -P /opt
tar xvf setuptools-1.4.2.tar.gz
cd setuptools-1.4.2
# Be careful, python2.7 here
python2.7 setup.py install
 
# 3. install pip
curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python2.7 -

# 4. install virtualenv
pip install virtualenv

# 5. make pip downloading fast
vim ~/.pip/pip.conf

[global]
index-url = http://pypi.douban.com/simple
