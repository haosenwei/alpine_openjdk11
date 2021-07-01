# README #

[English](https://github.com/haosenwei/alpine_openjdk11/blob/master/README_en.md)

* java环境的基础镜像

* 底层是alpine镜像
* java版本:openjdk1.11
* 安装方式 apk add openjdk11
* 软件路径 /usr/lib/jvm/java-11-openjdk

### 主要目的 ###

* 为需要java环境的项目提供基础镜像
* jdk1.11

### 使用方法 ###

* 启动并进入镜像 docker run -it huyisheng/alpine_openjdk11
* 后台启动镜像 docker run -d huyisheng/alpine_openjdk11