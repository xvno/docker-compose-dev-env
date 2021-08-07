#! /bin/bash
# mysql server is needed
dir=`cd $(dirname $0) && pwd`
source $dir/def.sh

docker stop $name
docker rm $name

# docker rmi $image
# docker build -t $image /Users/volving/Git/__tmp/try-spring-docker/nacos-server/nginx

docker run --name $name \
    -p 8848:8848 \
    -p 9848:9848 \
    -p 9555:9555 \
    --env-file $dir/standalone-mysql.env \
    --restart=always \
    $image