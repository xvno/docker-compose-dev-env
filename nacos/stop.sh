dir=`cd $(dirname $0) && pwd`
source $dir/def.sh

docker stop $name
docker rm $name

rm -rf $dir/logs/*