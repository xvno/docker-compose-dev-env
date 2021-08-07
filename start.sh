!# /bin/bash
docker start --name docker-nacos --restart=always -e MODE=standalone -p 48848:8848 -p 49848:9848 -p 49555:9555 nacos/nacos-server:2.0.2