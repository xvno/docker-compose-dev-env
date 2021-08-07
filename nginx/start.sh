#! /bin/bash
name=dev_nginx
imagename=docker_nginx:dev

echo name $name
docker stop $name
docker rm $name
docker rmi $imagename
docker build -t $imagename /Users/volving/Git/__tmp/try-spring-docker/nacos-server/nginx
docker run --name $name \
    -v /Users/volving/Git/__tmp/try-spring-docker/nacos-server/nginx/nginx.conf:/etc/ngin/nginx.conf \
    -v /Users/volving/Git/__tmp/try-spring-docker/nacos-server/nginx/assets:/server/assets \
    -v /Users/volving/Git/__tmp/try-spring-docker/nacos-server/nginx/log:/server/log \
    -p 80:80 \
    -p 8000:8000 \
    -p 443:443 \
    -p 1443:1443 \
    $imagename