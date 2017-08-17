## Alpine Linux with ibmjdk1.7

FROM airdock/base:jessie

MAINTAINER zhaoliping <zhaoliping0736@foxmail.com>

USER root
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://www.gzvit.com/download/ibmjdk.tar.gz" && \
    mkdir -p /usr/local/jdk && \
    tar -xvf ibmjdk.tar.gz -C /usr/local/jdk && \
    rm -rf ibmjdk.tar.gz
## Set JAVA_HOME environment
ENV JAVA_HOME /usr/local/jdk/ibmjdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

## Set up Locale
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
## Set china timezone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
