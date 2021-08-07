dir=`cd $(dirname $0) && pwd`
source $dir/def.sh

docker stop $name 2> /dev/null
docker rm $name 2> /dev/null
rm -rf $dir/lib/*

echo "$name stopped!"