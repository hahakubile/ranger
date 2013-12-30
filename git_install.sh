# http://git-scm.com/book/en/Getting-Started-Installing-Git

# 1. install libraries that Git depends on
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel

# 2. install git
wget https://git-core.googlecode.com/files/git-1.8.5.1.tar.gz
tar -zxf git-1.7.2.2.tar.gz
cd git-1.7.2.2
make prefix=/usr/local all
sudo make prefix=/usr/local install
