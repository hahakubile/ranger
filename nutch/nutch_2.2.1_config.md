
# 1. Http Protocol相关
# plugin/lib-http/src/java/org/apache/nutch/protocol/http/api/HttpBase.java
#
## 1.1 proxy 代理
<property>
  <name>http.proxy.host</name>
  <value></value>
  <description>The proxy hostname.  If empty, no proxy is used.</description>
</property>
<property>
  <name>http.proxy.username</name>
  <value></value>
  <description>Username for proxy. This will be used by
  'protocol-httpclient', if the proxy server requests basic, digest
  and/or NTLM authentication. To use this, 'protocol-httpclient' must
  be present in the value of 'plugin.includes' property.
  NOTE: For NTLM authentication, do not prefix the username with the
  domain, i.e. 'susam' is correct whereas 'DOMAIN\susam' is incorrect.
  </description>
</property>
<property>
  <name>http.proxy.password</name>
  <value></value>
  <description>Password for proxy. This will be used by
  'protocol-httpclient', if the proxy server requests basic, digest
  and/or NTLM authentication. To use this, 'protocol-httpclient' must
  be present in the value of 'plugin.includes' property.
  </description>
</property>


# 跳转

# outlink, 单页面最大出链个数, 默认值:100
<property>
  <name>db.max.outlinks.per.page</name>
  <value>100</value>
  <description>The maximum number of outlinks that we'll process for a page.
  If this value is nonnegative (>=0), at most db.max.outlinks.per.page outlinks
  will be processed for a page; otherwise, all outlinks will be processed.
  </description>
</property>
