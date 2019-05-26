
docker start `docker ps -a -q`
a=`docker ps -q`
for str in $a
do
	docker exec -it $str /bin/bash /configure/startrun.sh 
done


