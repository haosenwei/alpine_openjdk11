#!/bin/sh
BUILD_ID=dontKillMe
docker login --username=郝森伟 registry.cn-beijing.aliyuncs.com -p hao189108
docker stop `docker ps -a | grep openjdk11 | awk '{print $1}' `
docker rm `docker ps -a | grep openjdk11 | awk '{print $1}' `
docker build -t registry.cn-beijing.aliyuncs.com/haosenwei/openjdk11:v1 .
docker tag registry.cn-beijing.aliyuncs.com/haosenwei/openjdk11:v1 registry.cn-beijing.aliyuncs.com/haosenwei/openjdk11:latest
docker push registry.cn-beijing.aliyuncs.com/haosenwei/openjdk11:latest
docker push registry.cn-beijing.aliyuncs.com/haosenwei/openjdk11:v1