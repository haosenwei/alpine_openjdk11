FROM alpine
MAINTAINER haosenwei
RUN  apk update && apk add openjdk11-jdk
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
ENV LC_ALL "zh_CN.UTF-8"
ENV TZ=Asia/Shanghai