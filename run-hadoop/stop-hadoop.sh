#!/bin/bash
output1=`docker exec -it hadoop3 /bin/bash /usr/local/hadoop-2.7.7/sbin/stop-yarn.sh`
output2=`docker exec -it hadoop1 /bin/bash /usr/local/hadoop-2.7.7/sbin/stop-dfs.sh`
docker exec  hadoop3 /usr/local/jdk8/bin/jps
