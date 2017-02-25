FROM mysql:5.7.17
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>
RUN sed -i '2i\lower_case_table_names=1' /etc/my.cnf
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone
EXPOSE 3306
CMD ["mysqld"]
