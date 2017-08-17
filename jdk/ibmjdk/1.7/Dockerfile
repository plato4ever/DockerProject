## Alpine Linux with ibmjdk1.7

FROM alpine:3.5

MAINTAINER zhaoliping <zhaoliping0736@foxmail.com>

USER root
RUN wget http://www.gzvit.com/download/ibmjdk.tar.gz
RUN tar -xvf ibmjdk.tar.gz -C /usr/local/jdk

## Set JAVA_HOME environment
ENV JAVA_HOME /usr/local/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

## Set up Locale
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
## Set china timezone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
