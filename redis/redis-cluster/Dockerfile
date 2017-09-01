FROM ruby:2.2.5
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>

RUN gem install redis

ENV REDIS_VERSION 4.0.1
ENV REDIS_DOWNLOAD_URL http://download.redis.io/releases/redis-4.0.1.tar.gz
ENV REDIS_DOWNLOAD_SHA 2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591

RUN wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL";  \
	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; \
	mkdir -p /usr/local/redis; \
	tar -xzf redis.tar.gz -C /usr/local/redis --strip-components=1; \
	rm redis.tar.gz; 

