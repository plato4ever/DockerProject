FROM mysql:5.7.17
MAINTAINER zhaolp <zhaoliping0736@foxmail.com>
RUN sed -i '2i\lower_case_table_names=1' /etc/mysql/conf.d/docker.cnf
RUN sed -i "3i\sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION'" /etc/mysql/conf.d/docker.cnf
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/ShangHai" > /etc/timezone
EXPOSE 3306
CMD ["mysqld"]
