wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz -P /opt
cd /opt
tar xvf Python-2.7.5.tgz
./configure --prefix=/usr/local
# make altinstall is used to prevent replacing the default python binary file /usr/bin/python
make && make altinstall

# replace the default python
mv /usr/bin/python /usr/bin/python.bak
ln -s /usr/local/bin/python2.7 /usr/bin/python

# test
python
