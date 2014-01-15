# Pre-requisites
# (1). Python 2.7
# (2). lxml 
# (3). pip or easy_install

# 1. python & pip/easy_install
# @see https://github.com/hahakubile/ranger/blob/master/python27_install.sh

# 2. lxml
# @see http://lxml.de/installation.html

yum -y install libxml2 libxml2-devel libxslt libxslt-devel

# 3. scrapy

# @see http://stackoverflow.com/questions/7340784/easy-install-pyopenssl-error
pip install pyOpenSSL==0.12

pip install Scrapy==0.16.4
