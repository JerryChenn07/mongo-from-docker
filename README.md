# 打包命令
```docker
docker build --rm -t cjr-mongo:6.0.1 -f Dockerfile .
docker tag cjr-mongo:6.0.1 cjr0707/cjr-mongo:6.0.1
docker push cjr0707/cjr-mongo:6.0.1
```

# 运行命令
```docker
docker run -d --name cjr-mongo \
    -v ~/db-data/mongo:/data/db \
    -p 27017:27017 cjr-mongo:6.0.1
# 或者加上restart
docker run -d --name cjr-mongo \
    --restart always \
    -v ~/db-data/mongo:/data/db \
    -p 27017:27017 cjr-mongo:6.0.1
```

# 容器中

配置文件在`/etc/mongo/mongo.conf`

rdb在`~/db-data/mongo`
