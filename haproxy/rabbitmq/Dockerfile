FROM haproxy:1.7.9-alpine
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone
RUN mkdir -p /run/haproxy/
RUN mkdir -p /var/lib/haproxy
EXPOSE 4561 14561 8086 8080 80 443 8443
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
