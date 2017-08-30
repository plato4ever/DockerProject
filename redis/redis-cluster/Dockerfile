FROM redis:4-alpine
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone
RUN mkdir -p /usr/local/etc/redis/
RUN wget https://raw.githubusercontent.com/antirez/redis/3.0/redis.conf -O /usr/local/etc/redis/redis.conf
RUN sed -i 's/# slaveof <masterip> <masterport>/slaveof redis-master 6379/g' /usr/local/etc/redis/redis.conf
