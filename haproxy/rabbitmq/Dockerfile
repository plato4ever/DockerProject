FROM haproxy:1.7.9-alpine
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
