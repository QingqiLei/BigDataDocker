#!/bin/bash
docker exec -it hadoop1 /bin/bash /usr/local/hadoop-2.7.7/sbin/start-dfs.sh
docker exec  hadoop1 /usr/local/jdk8/bin/jps
echo '/usr/local/hadoop-2.7.7/sbin/start-yarn.sh'
docker exec -it hadoop3 /bin/bash 

