FROM centos:7
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>
ENV PASSWD "viewit#84217399"
RUN wget http://sequoiadb.b0.upaiyun.com/images/sequoiadb-2.6.2/x86_64/sequoiadb-2.6.2-linux_x86_64-installer.tar.gz
RUN tar -xvzf sequoiadb-2.6.2-linux_x86_64-installer.tar.gz

RUN  echo -e "2\n1\ny\n\n\n${PASSWD}\n${PASSWD}\n\nY\n" |./sequoiadb-2.0-linux-x86_64-installer.run --SMS true

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone
EXPOSE 8080 11790 11800 11810 11820
CMD ["mysqld"]
