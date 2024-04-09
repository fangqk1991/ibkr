# IBKR

基于盈透证券 Web API 封装的 Docker 镜像

* [IBKR API](https://ibkrcampus.com/ibkr-api-page/getting-started/)
* [Web API Documentation](https://ibkrcampus.com/ibkr-api-page/webapi-doc/)

关键修改

1. 默认配置下，只允许局域网 IP 访问，公网访问需通过前置的反向代理/网关

```
- 127.0.0.1
- 192.168.0.0/16
- 10.0.0.0/8
- 172.16.0.0/12
```

2. 日志策略及输出格式调整，移除冗余信息

3. 添加 Swagger API 文档

4. 通过 Docker 部署，启动命令

```
docker run -d -p 5000:5000 fangqk1991/ibkr
```

部署后验证

```
curl http://localhost:5000
```

访问 Swagger API 文档

* <http://localhost:5000/swagger>

