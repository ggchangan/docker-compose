# 启动
docker-compose up -d

# 使用nc -z localhost check 相应端口是否正常work
nc -z localhost 22181
# Connection to localhost port 22181 [tcp/*] succeeded!

# 查看compose创建的网络
docker network ls

# 使用clickhouse-client连接clickhouse-server
# 使用--network
# 使用 --host clickhouse-server 是固定的
docker run --network kafka-docker_default -it --rm --link kafka-docker_clickhouse-server_1 yandex/clickhouse-client:20.12.4.5 --host clickhouse-server

# 使用 docker inspect 查看容器ip
# kafka, zookeeper, clickhouse-server 使用同一个网络， 不同容器之间可以通过容器ip进行访问