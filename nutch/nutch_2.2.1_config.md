# 1. Http Protocol相关
---------------------
代码位置：plugin/lib-http/src/java/org/apache/nutch/protocol/http/api/HttpBase.java

## 1.1 proxy 代理
* `http.proxy.host` 代理主机名
* `http.proxy.username` 代理用户名，仅在'protocol-httpclient'中使用
* `http.proxy.password` 代理密码，仅在'protocol-httpclient'中使用

## 1.2 跳转（handleRedirect）

在WebPage中定义了一个字段reprUrl，用于记录跳转后的url

    <field name="reprUrl" family="f" qualifier="rpr"/>

nutch 2.0 默认不立即抓取跳转后的url，而是记录下来供下一轮抓取。

# 2. 页面解析
## 2.1 出链（outlink）
* `db.max.outlinks.per.page` 单页面最大出链个数, 默认值：100
