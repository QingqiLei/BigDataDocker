docker exec -d kafka1 /usr/local/kafka_2.11-2.1.1/bin/kafka-server-start.sh /usr/local/kafka_2.11-2.1.1/config/server.properties
docker exec -d kafka2 /usr/local/kafka_2.11-2.1.1/bin/kafka-server-start.sh /usr/local/kafka_2.11-2.1.1/config/server.properties
docker exec -d kafka3 /usr/local/kafka_2.11-2.1.1/bin/kafka-server-start.sh /usr/local/kafka_2.11-2.1.1/config/server.properties
