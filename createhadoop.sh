#!/bin/bash
if [ $HOSTNAME == "chauncey-System-Product-Name" ]
then 
	a=`docker ps -q`
	for str in $a
	do
		echo $str
	done
fi
docker run -h hadoop-1 --name hadoop1 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.2 -dit hadoophivesqoop:v2 /bin/bash
docker run -h hadoop-2 --name hadoop2 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.3 -dit hadoop:v3 /bin/bash
docker run -h hadoop-3 --name hadoop3 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.4 -dit hadoop:v3 /bin/bash
docker run -h hadoop-4 --name hadoop4 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.5 -dit hadoop:v3 /bin/bash
docker run -h hadoop-5 --name hadoop5 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.6 -dit hadoop:v3 /bin/bash
docker run -h zk-1 --name zk1 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.9 -dit zk:v1 /bin/bash
docker run -h zk-2 --name zk2 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.10 -dit zk:v1 /bin/bash
docker run -h zk-3 --name zk3 -v /configure:/configure -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.11 -dit zk:v1 /bin/bash
docker run -h hbase-1 --name hbase1 -v /configure:/configure -v /etc/localtime:/etc/localtime  --net mynetwork --ip 172.18.0.13 -dit hbase:v3 /bin/bash
docker run -h hbase-2 --name hbase2 -v /configure:/configure -v /etc/localtime:/etc/localtime  --net mynetwork --ip 172.18.0.14 -dit hbase:v3 /bin/bash
docker run -h hbase-3 --name hbase3 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.15 -dit hbase:v3 /bin/bash

docker run -h spark-1 --name spark1 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.16 -dit spark:v1 /bin/bash
docker run -h spark-2 --name spark2 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.17 -dit spark:v1 /bin/bash
docker run -h spark-3 --name spark3 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.18 -dit spark:v1 /bin/bash

docker run -h kafka-1 --name kafka1 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.19 -dit kafka:v2 /bin/bash
docker run -h kafka-2 --name kafka2 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.20 -dit kafka:v2 /bin/bash
docker run -h kafka-3 --name kafka3 -v /configure:/configure  -v /etc/localtime:/etc/localtime --net mynetwork --ip 172.18.0.21 -dit kafka:v2 /bin/bash
