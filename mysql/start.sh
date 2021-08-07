dir=`cd $(dirname $0) && pwd`
source $dir/def.sh

docker stop $name 2> /dev/null
docker rm $name 2> /dev/null
# docker rmi $image

docker run --name $name \
    -p 3306:3306 \
    -p 33060:33060 \
    -v $dir/init:/docker-entrypoint-initdb.d \
    -v $dir/opt-sql:/opt/sql \
    -v $dir/conf.d:/etc/mysql/conf.d \
    -v $dir/logs:/var/log/mysql \
    -v $dir/lib:/var/lib/mysql \
    --env-file $dir/default.env \
    --restart=always \
    -d \
    $image
