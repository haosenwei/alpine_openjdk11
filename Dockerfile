FROM docker.io/jeanblanchard/alpine-glibc
# author
MAINTAINER haosenwei
# A streamlined jdk
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk upgrade && apk add openjdk11 && apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone

ENV LANG zh_CN.utf8

# set env
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk
ENV PATH ${PATH}:${JAVA_HOME}/bin