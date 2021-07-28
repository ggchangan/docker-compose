# clickhouse docker https://clickhouse.tech/docs/en/getting-started/install/
# docker compose environment variable https://stackoverflow.com/questions/64723235/docker-compose-environment-variables-blank-string

#  start clickhouse server
export  CH_VERSION=latest && docker-compose up -d 

# clickhouse-client 
export  CH_VERSION=latest && docker run --network clickhouse_default -it --rm --link clickhouse_clickhouse-server_1:clickhouse-server yandex/clickhouse-client:${CH_VERSION} --host clickhouse-server