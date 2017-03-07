FROM centos/systemd

MAINTAINER zhaolp <zhaoliping0736@foxmail.com>

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone

ENV PASSWD "viewit#84217399"
RUN curl http://sequoiadb.b0.upaiyun.com/images/sequoiadb-2.6.2/x86_64/sequoiadb-2.6.2-linux_x86_64-installer.tar.gz -o sequoiadb-2.6.2-linux_x86_64-installer.tar.gz
RUN tar -xvzf sequoiadb-2.6.2-linux_x86_64-installer.tar.gz

RUN  echo -e "1\n1\ny\n\n\n\n${PASSWD}\n${PASSWD}\n\nY\nY\n\n" |./sequoiadb-2.6.2-linux_x86_64-installer.run --SMS true

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080 11790 11800 11810 11820
CMD ["/bin/sh"]
